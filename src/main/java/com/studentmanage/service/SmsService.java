package com.studentmanage.service;

import com.studentmanage.vo.InterviewMessage;

/**
 * 短信发送模块
 * Created by blue on 2016/11/30.
 */
public interface SmsService {
    void SentInterviewMessage(InterviewMessage interviewMessage);
}
