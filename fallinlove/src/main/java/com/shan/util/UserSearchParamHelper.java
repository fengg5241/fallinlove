package com.shan.util;

import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import com.google.common.collect.ImmutableTable;
import com.google.common.collect.Table;

public class UserSearchParamHelper {

	private static int curYear = Calendar.getInstance().get(Calendar.YEAR);
	
	public static Map<String, String> getParamKeyColumnMap(){
		Map<String, String> paramKeyColumnMap = new HashMap<String, String>();
		paramKeyColumnMap.put("1city", LoveTable.COLUMN_CITY);
		paramKeyColumnMap.put("1province", LoveTable.COLUMN_PROVINCE);
		paramKeyColumnMap.put("2", LoveTable.COLUMN_YEAR);
		paramKeyColumnMap.put("3", LoveTable.COLUMN_HEIGHT);
		paramKeyColumnMap.put("4", LoveTable.COLUMN_EDUCATION);
		paramKeyColumnMap.put("5", LoveTable.COLUMN_INCOME);
		return paramKeyColumnMap;
	}
	
			
	public static final Table<String, String, String> userSearchParam = new ImmutableTable.Builder<String, String, String>()
			.put("1", "11", "北京").put("1", "12", "天津").put("1", "13", "河北")
			.put("1", "14", "山西").put("1", "15", "内蒙古").put("1", "21", "辽宁")
			.put("1", "22", "吉林").put("1", "23", "黑龙江").put("1", "31", "上海")
			.put("1", "32", "江苏").put("1", "33", "浙江").put("1", "34", "安徽")
			.put("1", "35", "福建").put("1", "36", "江西").put("1", "37", "山东")
			.put("1", "41", "河南").put("1", "42", "湖北").put("1", "43", "湖南")
			.put("1", "44", "广东").put("1", "45", "广西").put("1", "46", "海南")
			.put("1", "50", "重庆").put("1", "51", "四川").put("1", "52", "贵州")
			.put("1", "53", "云南").put("1", "54", "西藏").put("1", "61", "陕西")
			.put("1", "62", "甘肃").put("1", "63", "青海").put("1", "64", "宁夏")
			.put("1", "65", "新疆").put("1", "71", "台湾").put("1", "81", "香港")
			.put("1", "82", "澳门").put("1", "98", "美国").put("1", "99", "国外")
			.put("1", "9902", "澳大利亚").put("1", "9903", "加拿大").put("1", "9904", "英国")
			.put("1", "9905", "日本").put("1", "9906", "新加坡").put("1", "9907", "德国")
			.put("1", "9908", "法国").put("1", "9909", "韩国").put("1", "9910", "比利时")
			.put("1", "9911", "新西兰").put("1", "9912", "瑞典").put("1", "9913", "瑞士")
			.put("1", "9914", "荷兰").put("1", "9915", "阿联酋").put("1", "9916", "芬兰")
			.put("1", "9917", "丹麦").put("1", "9918", "泰国").put("1", "9919", "西班牙")
			.put("1", "9921", "意大利").put("1", "9922", "挪威").put("1", "9924", "奥地利")
			.put("1", "9925", "爱尔兰").put("1", "9926", "马来西亚").put("1", "9927", "尼日利亚")
			.put("1", "9928", "俄罗斯").put("1", "9929", "巴西").put("1", "9930", "南非")
			.put("1", "9931", "葡萄牙").put("1", "9932", "墨西哥").put("1", "9933", "印尼")
			.put("1", "9934", "越南").put("1", "9935", "以色列").put("1", "9936", "科威特")
			.put("1", "9937", "希腊").put("1", "9938", "匈牙利").put("1", "9939", "阿根廷")
			.put("1", "9940", "印度").put("1", "9941", "柬埔寨").put("1", "9942", "菲律宾")
			.put("1", "9943", "埃及").put("1", "9944", "土耳其")
			.put("2", "18", curYear-18+"").put("2", "19", curYear-19+"").put("2", "20", curYear-20+"")
			.put("2", "21", curYear-21+"").put("2", "22", curYear-22+"").put("2", "23", curYear-23+"")
			.put("2", "24", curYear-24+"").put("2", "25", curYear-25+"").put("2", "26", curYear-26+"")
			.put("2", "27", curYear-27+"").put("2", "28", curYear-28+"").put("2", "29", curYear-29+"")
			.put("2", "30", curYear-30+"").put("2", "31", curYear-31+"").put("2", "32", curYear-32+"")
			.put("2", "33", curYear-33+"").put("2", "34", curYear-34+"").put("2", "35", curYear-35+"")
			.put("2", "36", curYear-36+"").put("2", "37", curYear-37+"").put("2", "38", curYear-38+"")
			.put("2", "39", curYear-39+"").put("2", "40", curYear-40+"").put("2", "41", curYear-41+"")
			.put("2", "42", curYear-42+"").put("2", "43", curYear-43+"").put("2", "44", curYear-44+"")
			.put("2", "45", curYear-45+"").put("2", "46", curYear-46+"").put("2", "47", curYear-47+"")
			.put("2", "48", curYear-48+"").put("2", "49", curYear-49+"").put("2", "50", curYear-50+"")
			.put("2", "51", curYear-51+"").put("2", "52", curYear-52+"").put("2", "53", curYear-53+"")
			.put("2", "54", curYear-54+"").put("2", "55", curYear-55+"").put("2", "56", curYear-56+"")
			.put("2", "57", curYear-57+"").put("2", "58", curYear-58+"").put("2", "59", curYear-59+"")
			.put("2", "60", curYear-60+"").put("2", "61", curYear-61+"").put("2", "62", curYear-62+"")
			.put("2", "63", curYear-63+"").put("2", "64", curYear-64+"").put("2", "65", curYear-65+"")
			.put("2", "66", curYear-66+"").put("2", "67", curYear-67+"").put("2", "68", curYear-68+"")
			.put("2", "69", curYear-69+"").put("2", "70", curYear-70+"").put("2", "71", curYear-71+"")
			.put("2", "72", curYear-72+"").put("2", "73", curYear-73+"").put("2", "74", curYear-74+"")
			.put("2", "75", curYear-75+"").put("2", "76", curYear-76+"").put("2", "77", curYear-77+"")
			.put("2", "78", curYear-78+"").put("2", "79", curYear-79+"").put("2", "80", curYear-80+"")
			.put("2", "81", curYear-81+"").put("2", "82", curYear-82+"").put("2", "83", curYear-83+"")
			.put("2", "84", curYear-84+"").put("2", "85", curYear-85+"").put("2", "86", curYear-86+"")
			.put("2", "87", curYear-87+"").put("2", "88", curYear-88+"").put("2", "89", curYear-89+"")
			.put("2", "90", curYear-90+"").put("2", "91", curYear-91+"").put("2", "92", curYear-92+"")
			.put("2", "93", curYear-93+"").put("2", "94", curYear-94+"").put("2", "95", curYear-95+"")
			.put("2", "96", curYear-96+"").put("2", "97", curYear-97+"").put("2", "98", curYear-98+"")
			.put("2", "99", curYear-99+"")
			.put("3", "140", "140厘米").put("3", "141", "141厘米").put("3", "142", "142厘米")
			.put("3", "143", "143厘米").put("3", "144", "144厘米").put("3", "145", "145厘米")
			.put("3", "146", "146厘米").put("3", "147", "147厘米").put("3", "148", "148厘米")
			.put("3", "149", "149厘米").put("3", "150", "150厘米").put("3", "151", "151厘米")
			.put("3", "152", "152厘米").put("3", "153", "153厘米").put("3", "154", "154厘米")
			.put("3", "155", "155厘米").put("3", "156", "156厘米").put("3", "157", "157厘米")
			.put("3", "158", "158厘米").put("3", "159", "159厘米").put("3", "160", "160厘米")
			.put("3", "161", "161厘米").put("3", "162", "162厘米").put("3", "163", "163厘米")
			.put("3", "164", "164厘米").put("3", "165", "165厘米").put("3", "166", "166厘米")
			.put("3", "167", "167厘米").put("3", "168", "168厘米").put("3", "169", "169厘米")
			.put("3", "170", "170厘米").put("3", "171", "171厘米").put("3", "172", "172厘米")
			.put("3", "173", "173厘米").put("3", "174", "174厘米").put("3", "175", "175厘米")
			.put("3", "176", "176厘米").put("3", "177", "177厘米").put("3", "178", "178厘米")
			.put("3", "179", "179厘米").put("3", "180", "180厘米").put("3", "181", "181厘米")
			.put("3", "182", "182厘米").put("3", "183", "183厘米").put("3", "184", "184厘米")
			.put("3", "185", "185厘米").put("3", "186", "186厘米").put("3", "187", "187厘米")
			.put("3", "188", "188厘米").put("3", "189", "189厘米").put("3", "190", "190厘米")
			.put("3", "191", "191厘米").put("3", "192", "192厘米").put("3", "193", "193厘米")
			.put("3", "194", "194厘米").put("3", "195", "195厘米").put("3", "196", "196厘米")
			.put("3", "197", "197厘米").put("3", "198", "198厘米").put("3", "199", "199厘米")
			.put("3", "200", "200厘米").put("3", "201", "201厘米").put("3", "202", "202厘米")
			.put("3", "203", "203厘米").put("3", "204", "204厘米").put("3", "205", "205厘米")
			.put("3", "206", "206厘米").put("3", "207", "207厘米").put("3", "208", "208厘米")
			.put("3", "209", "209厘米").put("3", "210", "210厘米").put("3", "211", "211厘米")
			.put("3", "212", "212厘米").put("3", "213", "213厘米").put("3", "214", "214厘米")
			.put("3", "215", "215厘米").put("3", "216", "216厘米").put("3", "217", "217厘米")
			.put("3", "218", "218厘米").put("3", "219", "219厘米").put("3", "220", "220厘米")
			.put("3", "221", "221厘米").put("3", "222", "222厘米").put("3", "223", "223厘米")
			.put("3", "224", "224厘米").put("3", "225", "225厘米").put("3", "226", "226厘米")
			.put("3", "227", "227厘米").put("3", "228", "228厘米").put("3", "229", "229厘米")
			.put("3", "230", "230厘米").put("3", "231", "231厘米").put("3", "232", "232厘米")
			.put("3", "233", "233厘米").put("3", "234", "234厘米").put("3", "235", "235厘米")
			.put("3", "236", "236厘米").put("3", "237", "237厘米").put("3", "238", "238厘米")
			.put("3", "239", "239厘米").put("3", "240", "240厘米").put("3", "241", "241厘米")
			.put("3", "242", "242厘米").put("3", "243", "243厘米").put("3", "244", "244厘米")
			.put("3", "245", "245厘米").put("3", "246", "246厘米").put("3", "247", "247厘米")
			.put("3", "248", "248厘米").put("3", "249", "249厘米").put("3", "250", "250厘米")
			.put("3", "251", "251厘米").put("3", "252", "252厘米").put("3", "253", "253厘米")
			.put("3", "254", "254厘米").put("3", "255", "255厘米").put("3", "256", "256厘米")
			.put("3", "257", "257厘米").put("3", "258", "258厘米").put("3", "259", "259厘米")
			.put("3", "260", "260厘米")
			.put("4", "10", "10").put("4", "20", "20").put("4", "30", "30").put("4", "40", "40")
			.put("4", "50", "60").put("4", "60", "60").put("4", "70", "70")
			.put("5", "10", "10").put("5", "20", "20").put("5", "30", "30")
			.put("5", "40", "40").put("5", "50", "50")
			.build();
			
}
