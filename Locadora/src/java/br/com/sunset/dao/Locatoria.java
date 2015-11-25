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
@Table(name = "locatoria")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Locatoria.findAll", query = "SELECT l FROM Locatoria l"),
    @NamedQuery(name = "Locatoria.findByIdLocatoria", query = "SELECT l FROM Locatoria l WHERE l.idLocatoria = :idLocatoria"),
    @NamedQuery(name = "Locatoria.findByIdCliente", query = "SELECT l FROM Locatoria l WHERE l.idCliente = :idCliente"),
    @NamedQuery(name = "Locatoria.findByIdFilme", query = "SELECT l FROM Locatoria l WHERE l.idFilme = :idFilme"),
    @NamedQuery(name = "Locatoria.findByDataLocatoria", query = "SELECT l FROM Locatoria l WHERE l.dataLocatoria = :dataLocatoria"),
    @NamedQuery(name = "Locatoria.findByValorLocatoria", query = "SELECT l FROM Locatoria l WHERE l.valorLocatoria = :valorLocatoria")})
public class Locatoria implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_Locatoria")
    private Integer idLocatoria;
    @Basic(optional = false)
    @NotNull
    @Column(name = "id_Cliente")
    private int idCliente;
    @Basic(optional = false)
    @NotNull
    @Column(name = "id_Filme")
    private int idFilme;
    @Basic(optional = false)
    @NotNull
    @Column(name = "dataLocatoria")
    @Temporal(TemporalType.DATE)
    private Date dataLocatoria;
    @Basic(optional = false)
    @NotNull
    @Column(name = "valorLocatoria")
    private float valorLocatoria;

    public Locatoria() {
    }

    public Locatoria(Integer idLocatoria) {
        this.idLocatoria = idLocatoria;
    }

    public Locatoria(Integer idLocatoria, int idCliente, int idFilme, Date dataLocatoria, float valorLocatoria) {
        this.idLocatoria = idLocatoria;
        this.idCliente = idCliente;
        this.idFilme = idFilme;
        this.dataLocatoria = dataLocatoria;
        this.valorLocatoria = valorLocatoria;
    }

    public Integer getIdLocatoria() {
        return idLocatoria;
    }

    public void setIdLocatoria(Integer idLocatoria) {
        this.idLocatoria = idLocatoria;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public int getIdFilme() {
        return idFilme;
    }

    public void setIdFilme(int idFilme) {
        this.idFilme = idFilme;
    }

    public Date getDataLocatoria() {
        return dataLocatoria;
    }

    public void setDataLocatoria(Date dataLocatoria) {
        this.dataLocatoria = dataLocatoria;
    }

    public float getValorLocatoria() {
        return valorLocatoria;
    }

    public void setValorLocatoria(float valorLocatoria) {
        this.valorLocatoria = valorLocatoria;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idLocatoria != null ? idLocatoria.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Locatoria)) {
            return false;
        }
        Locatoria other = (Locatoria) object;
        if ((this.idLocatoria == null && other.idLocatoria != null) || (this.idLocatoria != null && !this.idLocatoria.equals(other.idLocatoria))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.sunset.dao.Locatoria[ idLocatoria=" + idLocatoria + " ]";
    }
    
}
