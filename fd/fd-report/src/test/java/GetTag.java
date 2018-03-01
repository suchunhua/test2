import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang3.StringUtils;

 
 
public class GetTag {
public static void main(String[] args){
    	String number = "0.843656887001673";
		number = (number != null && !"".equals(number)) ? number : "0";
		BigDecimal bigDec = new BigDecimal(number);
		bigDec = bigDec.multiply(new BigDecimal(100));
		String[] temp = bigDec.toString().split("\\.");
		BigDecimal temp0 = new BigDecimal(temp[0]);
		BigDecimal temp1 = new BigDecimal("0."+temp[1]);
		MathContext mc = new MathContext(2, RoundingMode.UP);
		if(temp0.compareTo(BigDecimal.ZERO)>0){
			System.out.println(temp0.add(temp1.setScale(2, BigDecimal.ROUND_HALF_UP))); 
		}else{
			System.out.println(temp0.add(temp1.divide(BigDecimal.ONE, mc)));
		}
}
}