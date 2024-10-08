package com.app.bewodeurim.domain.payment;

import lombok.*;
import org.springframework.stereotype.Component;

@Component
@Getter @Setter @ToString
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@AllArgsConstructor
@NoArgsConstructor
public class PaymentDTO {
    @EqualsAndHashCode.Include
    private Long id;
    private Long memberId;
    private Long planId;
    private int paymentPrice;
    private String paymentStatus;
    private String createdDate;
    private String updatedDate;

    public PaymentVO toVO() {return new PaymentVO(id, memberId, planId, paymentPrice, paymentStatus, createdDate, updatedDate);}


}
