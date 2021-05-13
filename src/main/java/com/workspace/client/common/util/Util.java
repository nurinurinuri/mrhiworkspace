package com.workspace.client.common.util;

public class Util {
	public static int nvl(String text) {
		return nvl(text,0);
	}
	
	public static int nvl(String text,int def) {
		int ret = def;
		try {
			ret = Integer.parseInt(text);
		}catch(Exception e) {
			ret = def;
		}
		return ret;
	}

}
