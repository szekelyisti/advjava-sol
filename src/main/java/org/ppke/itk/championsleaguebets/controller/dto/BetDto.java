package org.ppke.itk.championsleaguebets.controller.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.ppke.itk.championsleaguebets.domain.Bet;
import org.ppke.itk.championsleaguebets.domain.Result;
import org.ppke.itk.championsleaguebets.domain.User;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BetDto {

    private Integer id;
    private Result resultOfBet;
    private User userOfBet;

    public static BetDto fromBet(Bet bet) {
        return new BetDto(
                bet.getId(),
                bet.getResultOfBet(),
                bet.getUserOfBet()
        );
    }
}
