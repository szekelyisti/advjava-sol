package org.ppke.itk.championsleaguebets.repository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.ppke.itk.championsleaguebets.domain.Bet;
import org.ppke.itk.championsleaguebets.domain.Match;
import org.ppke.itk.championsleaguebets.domain.Result;
import org.ppke.itk.championsleaguebets.domain.User;
import org.springframework.stereotype.Repository;

import java.util.NoSuchElementException;
import java.util.Optional;


@Repository
@RequiredArgsConstructor
public class CustomBetRepositoryImpl implements CustomBetRepository {

    @PersistenceContext
    private EntityManager entityManager;

    private final BetRepository betRepository;

    private final MatchRepository matchRepository;

    @Override
    @Transactional
    public Bet saveBet(Integer matchId, Result resultOfBet, String username) {

        Bet bet;

//      retrieve match from DB
        Optional<Match> match = matchRepository.findById(matchId);
        if (match.isEmpty()) {
            throw new NoSuchElementException(String.format("No match found for id %s", matchId));
        }
//      retrieve user from DB using entityManager
        Optional<User> existingUser = entityManager
                .createQuery("SELECT u FROM User u WHERE u.username = :username")
                .setParameter("username", username)
                .setMaxResults(1).getResultStream().findFirst();
        if (existingUser.isEmpty()) {
            throw new NoSuchElementException(String.format("No user found for username %s", username));
        }
//        check if bet already exists
        Optional<Bet> existingBet =
                betRepository.findByUserOfBetUsernameAndMatchOfBetId(username, matchId);

        if (existingBet.isPresent()) {
            bet = existingBet.get();
            bet.setResultOfBet(entityManager.merge(resultOfBet));
            betRepository.saveAndFlush(bet);
        } else {
            bet = new Bet();
            bet.setUserOfBet(existingUser.get());
            bet.setResultOfBet(entityManager.merge(resultOfBet));
            bet.setMatchOfBet(match.get());
            entityManager.persist(bet);
        }
        return bet;
    }

    @Override
    @Transactional
    public void deleteBet(Integer matchId, String username) {
        Optional<Bet> existingBet =
                betRepository.findByUserOfBetUsernameAndMatchOfBetId(username, matchId);

        if (existingBet.isPresent()) {
            entityManager.remove(existingBet.get());
        }
    }

}
