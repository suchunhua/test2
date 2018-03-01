package com.fd.tools.transfrom;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

import org.apache.commons.lang3.ObjectUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 对象操作工具类, 继承org.apache.commons.lang3.ObjectUtils类
 * 
 * @author zengxiaohui
 * @date 2017年6月29日 上午10:13:21
 * @version 1.0
 */
public class ObjectPlusUtils extends ObjectUtils {

	private static final Logger logger = LoggerFactory.getLogger(ObjectPlusUtils.class);

	/**
	 * 序列化对象
	 * 
	 * @param object
	 *            传入要序列化的对象
	 * @return 返回序列化的byte[]
	 */
	public static byte[] serialize(Object object) {
		ObjectOutputStream oos = null;
		ByteArrayOutputStream baos = null;
		try {
			if (object != null) {
				baos = new ByteArrayOutputStream();
				oos = new ObjectOutputStream(baos);
				oos.writeObject(object);
				return baos.toByteArray();
			}
		} catch (Exception e) {
			logger.error("序列化对象失败", e);
		}
		return null;
	}

	/**
	 * 反序列化对象
	 * 
	 * @param bytes
	 *            需要反序列化的byte[]
	 * @return 返回反序列化的Object
	 */
	public static Object unserialize(byte[] bytes) {
		ByteArrayInputStream bais = null;
		try {
			if (bytes != null && bytes.length > 0) {
				bais = new ByteArrayInputStream(bytes);
				ObjectInputStream ois = new ObjectInputStream(bais);
				return ois.readObject();
			}
		} catch (Exception e) {
			logger.error("反序列化对象失败", e);
		}
		return null;
	}
}
