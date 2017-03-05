package com.studentmanage.utils.impl;

import com.studentmanage.utils.WordSegmentation;

/**
 * @author :heyixin
 * @version :3.0
 * @Title :${file_name}
 * @package :com.studentmanage.utils.impl
 * @Description :${todo}
 * @date : 2016/12/1 下午 1:50
 */
public class WordSegmentationImpl implements WordSegmentation {

    @Override
    public String groupNameSegmentation(String groupName) {

        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("%");
        for (int i = 0; i < groupName.length(); i++) {
            if (groupName.charAt(i) != ' ') {
                stringBuffer.append(groupName.charAt(i));
                if (i < groupName.length()) {
                    stringBuffer.append("%");
                }
            }
        }
        return stringBuffer.toString();
    }
}
