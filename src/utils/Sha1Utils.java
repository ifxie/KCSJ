package utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Sha1Utils {
	static byte[] sha1Encode ;
	public static String sha1(String message){
		try {
			MessageDigest sha1Digest = MessageDigest.getInstance("SHA");
			sha1Encode = sha1Digest.digest(message.getBytes());
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return convertByteToHexString(sha1Encode);
	}
	public static  String convertByteToHexString(byte[] bytes){
		String result = "";
		for(int i = 0;i<bytes.length;i++){
			int temp = bytes[i] & 0xff;
			String tempHex = Integer.toHexString(temp);
			if(tempHex.length()<2){
				result += "0"+tempHex;
			}else{
				result += tempHex;
			}
		}
		return result;
	}
}
