package org.ppke.itk.championsleaguebets.repository;


import org.ppke.itk.championsleaguebets.domain.Bet;
import org.ppke.itk.championsleaguebets.domain.Result;
import org.ppke.itk.championsleaguebets.domain.User;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Optional;

public interface BetRepository extends JpaRepository<Bet, Integer> {

    Optional<Bet> findByUserOfBetUsernameAndMatchOfBetId(String username, Integer matchId);

    List<Bet> findByMatchOfBetId(Integer matchId);

    @Query("select b from Bet b where b.matchOfBet.id = :matchId")
    List<Bet> findAllByMatchId(Integer matchId);

    @Query("select b from Bet b where b.matchOfBet.id = ?1 order by b.matchOfBet.stadium")
    List<Bet> findAllByMatchIdOrderByStadium(Integer id);


}
