package org.ppke.itk.championsleaguebets.repository;

import org.ppke.itk.championsleaguebets.domain.Bet;
import org.ppke.itk.championsleaguebets.domain.Result;
import org.springframework.stereotype.Repository;

public interface CustomBetRepository {

    Bet saveBet(Integer matchId, Result resultOfBet, String username);

    void deleteBet(Integer matchId, String username);

}
