package config;

public class StsConfig {
    public static String REGION_CN_HANGZHOU = "cn-hangzhou";
    public static String STS_API_VERSION = "2015-04-01";
    public static String accessKeyId = "LTAIdqsIjACIRbTk";
    public static String accessKeySecret = "iTsPmdiMA9QEDPg3n3mY4hbxVjLKHb";
    public static String roleArn = "acs:ram::1506295432836638:role/meng";
    public static long durationSeconds = 3600;
    public static String roleSessionName = "external-username";
    public static String policy = "{\n" +
            " \"Statement\": [\n" +
            " {\n" +
            " \"Action\": [\n" +
            " \"oss:*\"\n" +
            " ],\n" +
            " \"Effect\": \"Allow\",\n" +
            " \"Resource\": [\"acs:oss:*:*:*\"]\n" +
            " }\n" +
            " ],\n" +
            " \"Version\": \"1\"\n" +
            "}\n";
}