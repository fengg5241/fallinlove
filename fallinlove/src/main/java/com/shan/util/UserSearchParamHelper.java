package com.shan.util;

import com.google.common.collect.ImmutableTable;
import com.google.common.collect.Table;

public class UserSearchParamHelper {

	private static final Table<String, String, String> userSearchParam = new ImmutableTable.Builder<String, String, String>()
			.put("1", "0", "0").build();;
}
