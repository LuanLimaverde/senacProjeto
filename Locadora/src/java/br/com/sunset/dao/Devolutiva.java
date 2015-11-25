/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.sunset.dao;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Luuher
 */
@Entity
@Table(name = "devolutiva")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Devolutiva.findAll", query = "SELECT d FROM Devolutiva d"),
    @NamedQuery(name = "Devolutiva.findByIdDevolucao", query = "SELECT d FROM Devolutiva d WHERE d.idDevolucao = :idDevolucao"),
    @NamedQuery(name = "Devolutiva.findByIdLocatoria", query = "SELECT d FROM Devolutiva d WHERE d.idLocatoria = :idLocatoria"),
    @NamedQuery(name = "Devolutiva.findByDataDevolucao", query = "SELECT d FROM Devolutiva d WHERE d.dataDevolucao = :dataDevolucao"),
    @NamedQuery(name = "Devolutiva.findByValor", query = "SELECT d FROM Devolutiva d WHERE d.valor = :valor")})
public class Devolutiva implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idDevolucao")
    private Integer idDevolucao;
    @Basic(optional = false)
    @NotNull
    @Column(name = "id_Locatoria")
    private int idLocatoria;
    @Basic(optional = false)
    @NotNull
    @Column(name = "dataDevolucao")
    @Temporal(TemporalType.DATE)
    private Date dataDevolucao;
    @Basic(optional = false)
    @NotNull
    @Column(name = "valor")
    private float valor;

    public Devolutiva() {
    }

    public Devolutiva(Integer idDevolucao) {
        this.idDevolucao = idDevolucao;
    }

    public Devolutiva(Integer idDevolucao, int idLocatoria, Date dataDevolucao, float valor) {
        this.idDevolucao = idDevolucao;
        this.idLocatoria = idLocatoria;
        this.dataDevolucao = dataDevolucao;
        this.valor = valor;
    }

    public Integer getIdDevolucao() {
        return idDevolucao;
    }

    public void setIdDevolucao(Integer idDevolucao) {
        this.idDevolucao = idDevolucao;
    }

    public int getIdLocatoria() {
        return idLocatoria;
    }

    public void setIdLocatoria(int idLocatoria) {
        this.idLocatoria = idLocatoria;
    }

    public Date getDataDevolucao() {
        return dataDevolucao;
    }

    public void setDataDevolucao(Date dataDevolucao) {
        this.dataDevolucao = dataDevolucao;
    }

    public float getValor() {
        return valor;
    }

    public void setValor(float valor) {
        this.valor = valor;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idDevolucao != null ? idDevolucao.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Devolutiva)) {
            return false;
        }
        Devolutiva other = (Devolutiva) object;
        if ((this.idDevolucao == null && other.idDevolucao != null) || (this.idDevolucao != null && !this.idDevolucao.equals(other.idDevolucao))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.sunset.dao.Devolutiva[ idDevolucao=" + idDevolucao + " ]";
    }
    
}
