package org.ppke.itk.championsleaguebets.repository;
import org.ppke.itk.championsleaguebets.domain.TournamentGroup;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface TournamentGroupRepository extends JpaRepository<TournamentGroup, Integer>  {
    List<TournamentGroup> findAll();

    @Query("select t from TournamentGroup t where t.id = :groupId")
    Optional<TournamentGroup> findById(@Param("groupId") Integer groupId);
}
