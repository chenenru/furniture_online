package com.web.utils;

/*
public class AlipayConfig {

	public static String app_id = "2016092700606112";// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	
	public static String merchant_private_key = "MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQDWTWovcKcZhEAZhBRBjQzg0xzeKc4bTGqSi7HuOHA+jmgTneM8z05WJSMETMyRGpKD8BgvJvIUqmhLL8XwzWoHL9VGGwXAi9Gv74bVzy35HupUETEtDRqWJAWp4zpvqIK/gJoljjEEsAWrlJAtl0GkFivftd6MdbhDmtTbzJ0nlE83fdBwF82aTWs9BCdDJ6gN7SOtqX/ntoJmsqhq+E0AoehfTLeHPp9PjVmvdnNhKnQr7sYM95vCUFWA1+ZFic28MIJ1Z+g4APmf529FBgQy6FtrlBRGTSYJzVCV40LPuMWQ+/1suJUdxfcYDJqrlfklENlzusMApQd22S98xKPJAgMBAAECggEBALT1cfDVQ4T8c9QX/7LKlFFUc0/2JSBQCr3sUDdEWSO5xJCsBjJXK2L6wPLklukAczAOEZ3fWROyQZcbpB2OlzWyYnlsYBMS/eF+dXEeHUf7nwuV6NyN8CFQEag/RBz9QkrLIV8NDr9Sk7crIAQfcUJJpoqlXGNnFE2h9JQV166OtjPs7qzNl1eqs0m91hnbv4/XF/zpIY90deGu7YfppTILmO+RXFiA1xBIueBb7u3hOXpX5EEGFZlpYJQqK3xtbLIWvquNxbiyKn07rgLr1LpJqWulonWxzsuhLh0FN+nvnNMFij829o9G54GYOh3qyI5v4xXfFoU67QhI93UjMsECgYEA6mPHk1+BgAkRxXW+ZuCjD5Ub6cKabP+FRyFM+o4RAjkTVwHVHFpqY7KoUa/hiKwkuR0e9lW4OKZ7MyD5Ufr3dnSPDBE+KgPQPNrtZjmLlOiyDNFTuO8klU2FLmOhfj/PfKvxIpBXt1JffTdxGu88zDHUkLGlHWg68bpthRQ9980CgYEA6g+FJ4lvJfaf1PrDaVgqcEPdmyfWsypodYxRiDtG0nNl4fi0E7NA7RiX7zd95sHmexLgUsFlNxvpS1D2D+vwY/nE8wDxk/w8RN4dAtDGlFfbXLu/ZOQ66zsbXWX1qErR/oQI2cQA14xjWsUq4t6Ajwh5zWKdCY0oSx+EhHc+J+0CgYEAmpW6L5lCmIXiwZ9ZNxKamJFX+oENRivz46iz01/VGek4tx6PRgbfuec/mbhs/63A/pGVNRPtzvcFs//gT1A821Qeb/ADVsRzF1+wSMZVJ52cqFV6aTLXptycpK6y+Mfu+SORgqE+KLrcHYJuRzxXlbibn955rn5qubihuK5T/FUCgYBtigvn//LLkosksqLnV0KtPaWlqlRZjzxJ3vx9RDiV3znMMoecPKTjEUJxyseaSh6idKgVMrs6uk5JWD+AHgxnzYm1rDhi6IYQON7c5XY6EI/x60/cWM+WLRhWcpQwSavTcFlwCMHYHrSU03eJq1YBGpdeXotd3/j+h2aOU/v71QKBgQDeCcrPhwyWY7YbSMPJ/cymIHbGHg15I38eD4BFVbMAG8zENTS5Hgg/P/i5aoN5+M9PUS0oS5lDHgN6oJ3Y0eTuWhwm55l2JKzmwf6UoE3fnZYs2b7Qm7im+szbjsC7X+lNLVH/cM0uTdd7MNbQiSQlcBTN/KM3Musy6DE9I3c0Vg==";

	public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA1k1qL3CnGYRAGYQUQY0M4NMc3inOG0xqkoux7jhwPo5oE53jPM9OViUjBEzMkRqSg/AYLybyFKpoSy/F8M1qBy/VRhsFwIvRr++G1c8t+R7qVBExLQ0aliQFqeM6b6iCv4CaJY4xBLAFq5SQLZdBpBYr37XejHW4Q5rU28ydJ5RPN33QcBfNmk1rPQQnQyeoDe0jral/57aCZrKoavhNAKHoX0y3hz6fT41Zr3ZzYSp0K+7GDPebwlBVgNfmRYnNvDCCdWfoOAD5n+dvRQYEMuhba5QURk0mCc1QleNCz7jFkPv9bLiVHcX3GAyaq5X5JRDZc7rDAKUHdtkvfMSjyQIDAQAB";
	
	public static String notify_url = "http://localhost:8080/alipay/alipayNotifyNotice.action";
	
	public static String return_url = "http://localhost:8080/alipay/alipayReturnNotice.action";
	
	public static String sign_type = "RSA2";
	
	public static String charset = "utf-8";
	
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";//ע支付宝网关https://openapi.alipay.com/gateway.do
}
*/

import java.io.FileWriter;
import java.io.IOException;

/**
 * @author shkstart
 * @create 2019-04-07 10:30
 */
/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {

//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016092700606112";

	// 商户私钥，您的PKCS8格式RSA2私钥
	public static String merchant_private_key = "MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQDWTWovcKcZhEAZhBRBjQzg0xzeKc4bTGqSi7HuOHA+jmgTneM8z05WJSMETMyRGpKD8BgvJvIUqmhLL8XwzWoHL9VGGwXAi9Gv74bVzy35HupUETEtDRqWJAWp4zpvqIK/gJoljjEEsAWrlJAtl0GkFivftd6MdbhDmtTbzJ0nlE83fdBwF82aTWs9BCdDJ6gN7SOtqX/ntoJmsqhq+E0AoehfTLeHPp9PjVmvdnNhKnQr7sYM95vCUFWA1+ZFic28MIJ1Z+g4APmf529FBgQy6FtrlBRGTSYJzVCV40LPuMWQ+/1suJUdxfcYDJqrlfklENlzusMApQd22S98xKPJAgMBAAECggEBALT1cfDVQ4T8c9QX/7LKlFFUc0/2JSBQCr3sUDdEWSO5xJCsBjJXK2L6wPLklukAczAOEZ3fWROyQZcbpB2OlzWyYnlsYBMS/eF+dXEeHUf7nwuV6NyN8CFQEag/RBz9QkrLIV8NDr9Sk7crIAQfcUJJpoqlXGNnFE2h9JQV166OtjPs7qzNl1eqs0m91hnbv4/XF/zpIY90deGu7YfppTILmO+RXFiA1xBIueBb7u3hOXpX5EEGFZlpYJQqK3xtbLIWvquNxbiyKn07rgLr1LpJqWulonWxzsuhLh0FN+nvnNMFij829o9G54GYOh3qyI5v4xXfFoU67QhI93UjMsECgYEA6mPHk1+BgAkRxXW+ZuCjD5Ub6cKabP+FRyFM+o4RAjkTVwHVHFpqY7KoUa/hiKwkuR0e9lW4OKZ7MyD5Ufr3dnSPDBE+KgPQPNrtZjmLlOiyDNFTuO8klU2FLmOhfj/PfKvxIpBXt1JffTdxGu88zDHUkLGlHWg68bpthRQ9980CgYEA6g+FJ4lvJfaf1PrDaVgqcEPdmyfWsypodYxRiDtG0nNl4fi0E7NA7RiX7zd95sHmexLgUsFlNxvpS1D2D+vwY/nE8wDxk/w8RN4dAtDGlFfbXLu/ZOQ66zsbXWX1qErR/oQI2cQA14xjWsUq4t6Ajwh5zWKdCY0oSx+EhHc+J+0CgYEAmpW6L5lCmIXiwZ9ZNxKamJFX+oENRivz46iz01/VGek4tx6PRgbfuec/mbhs/63A/pGVNRPtzvcFs//gT1A821Qeb/ADVsRzF1+wSMZVJ52cqFV6aTLXptycpK6y+Mfu+SORgqE+KLrcHYJuRzxXlbibn955rn5qubihuK5T/FUCgYBtigvn//LLkosksqLnV0KtPaWlqlRZjzxJ3vx9RDiV3znMMoecPKTjEUJxyseaSh6idKgVMrs6uk5JWD+AHgxnzYm1rDhi6IYQON7c5XY6EI/x60/cWM+WLRhWcpQwSavTcFlwCMHYHrSU03eJq1YBGpdeXotd3/j+h2aOU/v71QKBgQDeCcrPhwyWY7YbSMPJ/cymIHbGHg15I38eD4BFVbMAG8zENTS5Hgg/P/i5aoN5+M9PUS0oS5lDHgN6oJ3Y0eTuWhwm55l2JKzmwf6UoE3fnZYs2b7Qm7im+szbjsC7X+lNLVH/cM0uTdd7MNbQiSQlcBTN/KM3Musy6DE9I3c0Vg==";

	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
	public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA0x29n3L/h2m0n2z5PZ1LVI0iirbqWgTAA07ATy9dKer55kyTaFfmOoesfFwdMrKtZx9RbaGyXxvhRHZU3tZHv9XuA7pADfmdMeBwqOItw/OkQBSFFW3uBXlVehXFCyTjjauCV/UKgXwR8Z4TtXKaREVj3OAFMIkbXJG4GJC/RfiZPb+smAloEFUORveocQ7nHcHaMzAjmyZxxttK+FP/WqI654aBWoeoyfzwHuDzgaDZtpanwgyKLppq01yTPXUxX1lvP8cPMeev1iFCyBGAdehSKFrlTVOkqdI0cRqXu18HJPEx6783nQWFgbnBVLvoGDoavhAGrDlo7bEm8s11+QIDAQAB";
	/*  MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA0x29n3L/h2m0n2z5PZ1LVI0iirbqWgTAA07ATy9dKer55kyTaFfmOoesfFwdMrKtZx9RbaGyXxvhRHZU3tZHv9XuA7pADfmdMeBwqOItw/OkQBSFFW3uBXlVehXFCyTjjauCV/UKgXwR8Z4TtXKaREVj3OAFMIkbXJG4GJC/RfiZPb+smAloEFUORveocQ7nHcHaMzAjmyZxxttK+FP/WqI654aBWoeoyfzwHuDzgaDZtpanwgyKLppq01yTPXUxX1lvP8cPMeev1iFCyBGAdehSKFrlTVOkqdI0cRqXu18HJPEx6783nQWFgbnBVLvoGDoavhAGrDlo7bEm8s11+QIDAQAB   这是支付宝公钥
        MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA1k1qL3CnGYRAGYQUQY0M4NMc3inOG0xqkoux7jhwPo5oE53jPM9OViUjBEzMkRqSg/AYLybyFKpoSy/F8M1qBy/VRhsFwIvRr++G1c8t+R7qVBExLQ0aliQFqeM6b6iCv4CaJY4xBLAFq5SQLZdBpBYr37XejHW4Q5rU28ydJ5RPN33QcBfNmk1rPQQnQyeoDe0jral/57aCZrKoavhNAKHoX0y3hz6fT41Zr3ZzYSp0K+7GDPebwlBVgNfmRYnNvDCCdWfoOAD5n+dvRQYEMuhba5QURk0mCc1QleNCz7jFkPv9bLiVHcX3GAyaq5X5JRDZc7rDAKUHdtkvfMSjyQIDAQAB   这是应用公钥*/
	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	//public static String notify_url = "http://localhost:8080/alipay/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	//public static String return_url = "http://localhost:8080/alipay/return_url.jsp";//alipay/return_url.jsp
	public static String notify_url = "http://localhost:8080/alipayNotifyNotice";

	public static String return_url = "http://localhost:8080/alipayReturnNotice";

	// 签名方式
	public static String sign_type = "RSA2";

	// 字符编码格式
	public static String charset = "utf-8";

	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

	// 支付宝网关
	public static String log_path = "E:\\alipay.trade.page.pay-JAVA-UTF-8\\沙箱支付日志";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

	/**
	 * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
	 * @param sWord 要写入日志里的文本内容
	 */
	public static void logResult(String sWord) {
		FileWriter writer = null;
		try {
			writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
			writer.write(sWord);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (writer != null) {
				try {
					writer.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}
}