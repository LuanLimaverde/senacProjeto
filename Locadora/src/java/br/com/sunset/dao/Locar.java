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
@Table(name = "locar")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Locar.findAll", query = "SELECT l FROM Locar l"),
    @NamedQuery(name = "Locar.findByIdLocar", query = "SELECT l FROM Locar l WHERE l.idLocar = :idLocar"),
    @NamedQuery(name = "Locar.findByIdCLiente", query = "SELECT l FROM Locar l WHERE l.idCLiente = :idCLiente"),
    @NamedQuery(name = "Locar.findByIdFilme", query = "SELECT l FROM Locar l WHERE l.idFilme = :idFilme"),
    @NamedQuery(name = "Locar.findByDate", query = "SELECT l FROM Locar l WHERE l.date = :date"),
    @NamedQuery(name = "Locar.findByDevolucao", query = "SELECT l FROM Locar l WHERE l.devolucao = :devolucao"),
    @NamedQuery(name = "Locar.findByDevolvido", query = "SELECT l FROM Locar l WHERE l.devolvido = :devolvido")})
public class Locar implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idLocar")
    private Integer idLocar;
    @Basic(optional = false)
    @NotNull
    @Column(name = "idCLiente")
    private int idCLiente;
    @Basic(optional = false)
    @NotNull
    @Column(name = "idFilme")
    private int idFilme;
    @Basic(optional = false)
    @NotNull
    @Column(name = "date")
    @Temporal(TemporalType.DATE)
    private Date date;
    @Basic(optional = false)
    @NotNull
    @Column(name = "devolucao")
    @Temporal(TemporalType.DATE)
    private Date devolucao;
    @Basic(optional = false)
    @NotNull
    @Column(name = "devolvido")
    private boolean devolvido;

    public Locar() {
    }

    public Locar(Integer idLocar) {
        this.idLocar = idLocar;
    }

    public Locar(Integer idLocar, int idCLiente, int idFilme, Date date, Date devolucao, boolean devolvido) {
        this.idLocar = idLocar;
        this.idCLiente = idCLiente;
        this.idFilme = idFilme;
        this.date = date;
        this.devolucao = devolucao;
        this.devolvido = devolvido;
    }

    public Integer getIdLocar() {
        return idLocar;
    }

    public void setIdLocar(Integer idLocar) {
        this.idLocar = idLocar;
    }

    public int getIdCLiente() {
        return idCLiente;
    }

    public void setIdCLiente(int idCLiente) {
        this.idCLiente = idCLiente;
    }

    public int getIdFilme() {
        return idFilme;
    }

    public void setIdFilme(int idFilme) {
        this.idFilme = idFilme;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Date getDevolucao() {
        return devolucao;
    }

    public void setDevolucao(Date devolucao) {
        this.devolucao = devolucao;
    }

    public boolean getDevolvido() {
        return devolvido;
    }

    public void setDevolvido(boolean devolvido) {
        this.devolvido = devolvido;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idLocar != null ? idLocar.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Locar)) {
            return false;
        }
        Locar other = (Locar) object;
        if ((this.idLocar == null && other.idLocar != null) || (this.idLocar != null && !this.idLocar.equals(other.idLocar))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.sunset.dao.Locar[ idLocar=" + idLocar + " ]";
    }
    
}
