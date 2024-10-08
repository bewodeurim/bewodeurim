/* 구독료 결제 테이블 */
CREATE TABLE TBL_PAYMENT (
    ID NUMBER CONSTRAINT PK_PAYMENT PRIMARY KEY,  /* 구독료 결제 테이블의 기본 키 */
    MEMBER_ID NUMBER NOT NULL,  /* 회원 ID */
    PLAN_ID NUMBER NOT NULL,  /* 요금제 ID */
    PAYMENT_PRICE NUMBER NOT NULL,  /* 결제 금액 */
    PAYMENT_STATUS VARCHAR2(20) NOT NULL,  /* 결제 상태 (성공, 실패, 대기 등) */
    CREATED_DATE DATE DEFAULT SYSDATE, /* 결제 날짜 */
    UPDATED_DATE DATE DEFAULT SYSDATE,
    CONSTRAINT FK_PAYMENT_MEMBER FOREIGN KEY (MEMBER_ID)
        REFERENCES TBL_MEMBER(ID),  /* 회원 테이블의 ID를 참조 */
    CONSTRAINT FK_PAYMENT_PLAN FOREIGN KEY (PLAN_ID)
        REFERENCES TBL_PLAN(ID)  /* 요금제 테이블의 ID를 참조 */
);

CREATE SEQUENCE SEQ_PAYMENT;

SELECT * FROM TBL_PAYMENT;

-- 결제 정보 삽입
INSERT INTO TBL_PAYMENT (
    ID,
    MEMBER_ID,
    PLAN_ID,
    PAYMENT_PRICE,
    PAYMENT_STATUS,
    CREATED_DATE,
    UPDATED_DATE
) VALUES (
             SCOTT.SEQ_PAYMENT.NEXTVAL,  -- 결제 테이블 ID 자동 증가
             21,                    -- MEMBER_ID: TBL_MEMBER에서 참조
             42,                    -- PLAN_ID: TBL_PLAN에서 참조
             12000,                 -- PAYMENT_PRICE: 요금제 가격
             'SUCCESS',            -- 결제 상태
             SYSDATE,
             SYSDATE
         );
