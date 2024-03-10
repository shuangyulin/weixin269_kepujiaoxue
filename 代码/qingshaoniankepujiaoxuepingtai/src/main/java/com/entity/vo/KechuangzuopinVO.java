package com.entity.vo;

import com.entity.KechuangzuopinEntity;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

/**
 * 作品信息
 * 手机端接口返回实体辅助类
 * （主要作用去除一些不必要的字段）
 */
@TableName("kechuangzuopin")
public class KechuangzuopinVO implements Serializable {
    private static final long serialVersionUID = 1L;


    /**
     * 主键
     */

    @TableField(value = "id")
    private Integer id;


    /**
     * 作品标题
     */

    @TableField(value = "kechuangzuopin_name")
    private String kechuangzuopinName;


    /**
     * 作品类型
     */

    @TableField(value = "kechuangzuopin_types")
    private Integer kechuangzuopinTypes;


    /**
     * 作品封面
     */

    @TableField(value = "kechuangzuopin_photo")
    private String kechuangzuopinPhoto;


    /**
     * 用户
     */

    @TableField(value = "yonghu_id")
    private Integer yonghuId;


    /**
     * 作品内容
     */

    @TableField(value = "kechuangzuopin_content")
    private String kechuangzuopinContent;


    /**
     * 发布时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "insert_time")
    private Date insertTime;


    /**
     * 创建时间 show2 photoShow
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "create_time")
    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：作品标题
	 */
    public String getKechuangzuopinName() {
        return kechuangzuopinName;
    }


    /**
	 * 获取：作品标题
	 */

    public void setKechuangzuopinName(String kechuangzuopinName) {
        this.kechuangzuopinName = kechuangzuopinName;
    }
    /**
	 * 设置：作品类型
	 */
    public Integer getKechuangzuopinTypes() {
        return kechuangzuopinTypes;
    }


    /**
	 * 获取：作品类型
	 */

    public void setKechuangzuopinTypes(Integer kechuangzuopinTypes) {
        this.kechuangzuopinTypes = kechuangzuopinTypes;
    }
    /**
	 * 设置：作品封面
	 */
    public String getKechuangzuopinPhoto() {
        return kechuangzuopinPhoto;
    }


    /**
	 * 获取：作品封面
	 */

    public void setKechuangzuopinPhoto(String kechuangzuopinPhoto) {
        this.kechuangzuopinPhoto = kechuangzuopinPhoto;
    }
    /**
	 * 设置：用户
	 */
    public Integer getYonghuId() {
        return yonghuId;
    }


    /**
	 * 获取：用户
	 */

    public void setYonghuId(Integer yonghuId) {
        this.yonghuId = yonghuId;
    }
    /**
	 * 设置：作品内容
	 */
    public String getKechuangzuopinContent() {
        return kechuangzuopinContent;
    }


    /**
	 * 获取：作品内容
	 */

    public void setKechuangzuopinContent(String kechuangzuopinContent) {
        this.kechuangzuopinContent = kechuangzuopinContent;
    }
    /**
	 * 设置：发布时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }


    /**
	 * 获取：发布时间
	 */

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 设置：创建时间 show2 photoShow
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 获取：创建时间 show2 photoShow
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

}
