package com.app.bewodeurim.service.plan;

import com.app.bewodeurim.domain.plan.PlanVO;

import java.util.List;

public interface PlanService {
    PlanVO getPlanById(Long planId);  // 요금제 ID로 요금제 조회

    List<PlanVO> getAllPlans();
}




