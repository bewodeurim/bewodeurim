package com.app.bewodeurim.domain.area;

import lombok.*;
import org.springframework.stereotype.Component;

@Component
@Getter @ToString
@NoArgsConstructor
@AllArgsConstructor
public class RegionVO {
    private Long id;
    private Long cityId;
    private String regionName;
}
