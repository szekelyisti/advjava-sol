package org.ppke.itk.championsleaguebets.repository;

import org.ppke.itk.championsleaguebets.domain.Match;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Optional;

public interface MatchRepository extends JpaRepository<Match, Integer> {
    Optional<Match> findById(Integer matchId);

    List<Match> findByTournamentGroupId(Integer groupId);

}
