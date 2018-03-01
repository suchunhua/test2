package com.fd.task.entity;

public class OExacMultiannoWithBLOBs extends OExacMultianno {
    private String geneRefgene;

    private String aachangeRefgene;

    public String getGeneRefgene() {
        return geneRefgene;
    }

    public void setGeneRefgene(String geneRefgene) {
        this.geneRefgene = geneRefgene == null ? null : geneRefgene.trim();
    }

    public String getAachangeRefgene() {
        return aachangeRefgene;
    }

    public void setAachangeRefgene(String aachangeRefgene) {
        this.aachangeRefgene = aachangeRefgene == null ? null : aachangeRefgene.trim();
    }
}