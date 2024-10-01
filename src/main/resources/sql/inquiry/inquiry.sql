/* 문의 테이블 */
DROP TABLE TBL_INQUIRY;
CREATE TABLE TBL_INQUIRY (
    ID NUMBER CONSTRAINT PK_INQUIRY PRIMARY KEY,  /* 문의 테이블의 기본 키 */
    MEMBER_ID NUMBER NOT NULL,  /* 회원 ID */
    INQUIRY_TYPE VARCHAR2(50) NOT NULL,  /* 문의 유형 */
    INQUIRY_TITLE VARCHAR2(255) NOT NULL,  /* 문의 제목 */
    INQUIRY_CONTENT VARCHAR2(1000) NOT NULL,  /* 문의 내용 */
    CREATED_DATE DATE DEFAULT SYSDATE,
    UPDATED_DATE DATE DEFAULT SYSDATE,
    CONSTRAINT FK_INQUIRY_MEMBER FOREIGN KEY (MEMBER_ID)
        REFERENCES TBL_MEMBER(ID)  /* 회원 테이블의 ID를 참조 */
);

CREATE SEQUENCE SEQ_INQUIRY;
SELECT * FROM TBL_INQUIRY;