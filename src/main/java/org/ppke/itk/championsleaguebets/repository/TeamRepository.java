package org.ppke.itk.championsleaguebets.repository;

import org.ppke.itk.championsleaguebets.domain.Team;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;
public interface TeamRepository extends JpaRepository<Team, Integer> {
    List<Team> findAll();

//    List<Team> findAll(Integer limit, String sort);

    Page<Team> findAll(Pageable page);

    Optional<Team> findById(Integer id);
    List<Team> findByRankingPointsLessThan(Double limit);
}
