/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.sunset.dao;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Luuher
 */
@Entity
@Table(name = "filme")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Filme.findAll", query = "SELECT f FROM Filme f"),
    @NamedQuery(name = "Filme.findByIdFilme", query = "SELECT f FROM Filme f WHERE f.idFilme = :idFilme"),
    @NamedQuery(name = "Filme.findByNomeFilme", query = "SELECT f FROM Filme f WHERE f.nomeFilme = :nomeFilme"),
    @NamedQuery(name = "Filme.findByIdGenero", query = "SELECT f FROM Filme f WHERE f.idGenero = :idGenero"),
    @NamedQuery(name = "Filme.findByEstoque", query = "SELECT f FROM Filme f WHERE f.estoque = :estoque"),
    @NamedQuery(name = "Filme.findByIdClasse", query = "SELECT f FROM Filme f WHERE f.idClasse = :idClasse")})
public class Filme implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idFilme")
    private Integer idFilme;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "nomeFilme")
    private String nomeFilme;
    @Basic(optional = false)
    @NotNull
    @Column(name = "id_Genero")
    private int idGenero;
    @Basic(optional = false)
    @NotNull
    @Column(name = "estoque")
    private int estoque;
    @Basic(optional = false)
    @NotNull
    @Column(name = "id_Classe")
    private int idClasse;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "descricao")
    private String descricao;

    public Filme() {
    }

    public Filme(Integer idFilme) {
        this.idFilme = idFilme;
    }

    public Filme(Integer idFilme, String nomeFilme, int idGenero, int estoque, int idClasse, String descricao) {
        this.idFilme = idFilme;
        this.nomeFilme = nomeFilme;
        this.idGenero = idGenero;
        this.estoque = estoque;
        this.idClasse = idClasse;
        this.descricao = descricao;
    }

    public Integer getIdFilme() {
        return idFilme;
    }

    public void setIdFilme(Integer idFilme) {
        this.idFilme = idFilme;
    }

    public String getNomeFilme() {
        return nomeFilme;
    }

    public void setNomeFilme(String nomeFilme) {
        this.nomeFilme = nomeFilme;
    }

    public int getIdGenero() {
        return idGenero;
    }

    public void setIdGenero(int idGenero) {
        this.idGenero = idGenero;
    }

    public int getEstoque() {
        return estoque;
    }

    public void setEstoque(int estoque) {
        this.estoque = estoque;
    }

    public int getIdClasse() {
        return idClasse;
    }

    public void setIdClasse(int idClasse) {
        this.idClasse = idClasse;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idFilme != null ? idFilme.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Filme)) {
            return false;
        }
        Filme other = (Filme) object;
        if ((this.idFilme == null && other.idFilme != null) || (this.idFilme != null && !this.idFilme.equals(other.idFilme))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.sunset.dao.Filme[ idFilme=" + idFilme + " ]";
    }
    
}
