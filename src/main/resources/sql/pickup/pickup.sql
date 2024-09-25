/* 수거 테이블 */
CREATE TABLE TBL_PICKUP (
    ID NUMBER CONSTRAINT PK_PICKUP PRIMARY KEY,  /* 수거 테이블의 기본 키 */
    MEMBER_ID NUMBER NOT NULL,  /* 회원 ID */
    DRIVER_ID NUMBER,  /* 배달기사 ID */
    PICKUP_NUMBER VARCHAR2(255) NOT NULL,  /* 수거 요청 번호 */
    PICKUP_SCHEDULE VARCHAR2(255),  /* 수거 일정 */
    PICKUP_ENTER VARCHAR2(255),  /* 출입방법 */
    PICKUP_REQUEST_CONTENT VARCHAR2(1000),  /* 요청사항 내용 (대용량 텍스트) */
    PICKUP_STATUS VARCHAR2(255),  /* 수거 상태 (예: 요청, 예정, 완료) */
    CREATED_DATE DATE DEFAULT SYSDATE,/* 수거 신청 날짜 */
    UPDATED_DATE DATE DEFAULT SYSDATE,
    CONSTRAINT FK_PICKUP_MEMBER FOREIGN KEY (MEMBER_ID)
        REFERENCES TBL_MEMBER(ID),  /* 회원 테이블의 ID를 참조 */
    CONSTRAINT FK_PICKUP_DRIVER FOREIGN KEY (DRIVER_ID)
        REFERENCES TBL_DRIVER(ID)  /* 배달기사 테이블의 ID를 참조 */
);
CREATE SEQUENCE SEQ_PICKUP;

SELECT * FROM TBL_PICKUP;

INSERT INTO TBL_PICKUP (
    ID,
    MEMBER_ID,
    DRIVER_ID,
    PICKUP_NUMBER,
    PICKUP_SCHEDULE,
    PICKUP_ENTER,
    PICKUP_REQUEST_CONTENT,
    PICKUP_STATUS,
    CREATED_DATE,
    UPDATED_DATE
) VALUES (
             SEQ_PICKUP.NEXTVAL,
             2,
             null,
             'PICK2323413',
             '2024-09-30 10:00',
             '자율 출입 가능',
             '문 앞에 두시면 됩니다.',
             '요청',
             SYSDATE,
             SYSDATE
         );
