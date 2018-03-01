package com.fd.task.entity;

public class OExacMultianno {
    private Long id;

    private String chr;

    private Integer start;

    private Integer end;

    private String ref;

    private String alt;

    private String funcRefgene;

    private String exonicfuncRefgene;

    private String cytoband;

    private String snp138;

    private Double exacAll;

    private Double exacAfr;

    private Double exacAmr;

    private Double exacEas;

    private Double exacFin;

    private Double exacNfe;

    private Double exacOth;

    private Double exacSas;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getChr() {
        return chr;
    }

    public void setChr(String chr) {
        this.chr = chr == null ? null : chr.trim();
    }

    public Integer getStart() {
        return start;
    }

    public void setStart(Integer start) {
        this.start = start;
    }

    public Integer getEnd() {
        return end;
    }

    public void setEnd(Integer end) {
        this.end = end;
    }

    public String getRef() {
        return ref;
    }

    public void setRef(String ref) {
        this.ref = ref == null ? null : ref.trim();
    }

    public String getAlt() {
        return alt;
    }

    public void setAlt(String alt) {
        this.alt = alt == null ? null : alt.trim();
    }

    public String getFuncRefgene() {
        return funcRefgene;
    }

    public void setFuncRefgene(String funcRefgene) {
        this.funcRefgene = funcRefgene == null ? null : funcRefgene.trim();
    }

    public String getExonicfuncRefgene() {
        return exonicfuncRefgene;
    }

    public void setExonicfuncRefgene(String exonicfuncRefgene) {
        this.exonicfuncRefgene = exonicfuncRefgene == null ? null : exonicfuncRefgene.trim();
    }

    public String getCytoband() {
        return cytoband;
    }

    public void setCytoband(String cytoband) {
        this.cytoband = cytoband == null ? null : cytoband.trim();
    }

    public String getSnp138() {
        return snp138;
    }

    public void setSnp138(String snp138) {
        this.snp138 = snp138 == null ? null : snp138.trim();
    }

    public Double getExacAll() {
        return exacAll;
    }

    public void setExacAll(Double exacAll) {
        this.exacAll = exacAll;
    }

    public Double getExacAfr() {
        return exacAfr;
    }

    public void setExacAfr(Double exacAfr) {
        this.exacAfr = exacAfr;
    }

    public Double getExacAmr() {
        return exacAmr;
    }

    public void setExacAmr(Double exacAmr) {
        this.exacAmr = exacAmr;
    }

    public Double getExacEas() {
        return exacEas;
    }

    public void setExacEas(Double exacEas) {
        this.exacEas = exacEas;
    }

    public Double getExacFin() {
        return exacFin;
    }

    public void setExacFin(Double exacFin) {
        this.exacFin = exacFin;
    }

    public Double getExacNfe() {
        return exacNfe;
    }

    public void setExacNfe(Double exacNfe) {
        this.exacNfe = exacNfe;
    }

    public Double getExacOth() {
        return exacOth;
    }

    public void setExacOth(Double exacOth) {
        this.exacOth = exacOth;
    }

    public Double getExacSas() {
        return exacSas;
    }

    public void setExacSas(Double exacSas) {
        this.exacSas = exacSas;
    }
}