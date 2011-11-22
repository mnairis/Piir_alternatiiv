// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.i377.team28.entities;

import ee.itcollege.i377.team28.entities.VOIMALIK_ALLUVUS;
import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect VOIMALIK_ALLUVUS_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager VOIMALIK_ALLUVUS.entityManager;
    
    @Version
    @Column(name = "version")
    private Integer VOIMALIK_ALLUVUS.version;
    
    public Integer VOIMALIK_ALLUVUS.getVersion() {
        return this.version;
    }
    
    public void VOIMALIK_ALLUVUS.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void VOIMALIK_ALLUVUS.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void VOIMALIK_ALLUVUS.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            VOIMALIK_ALLUVUS attached = VOIMALIK_ALLUVUS.findVOIMALIK_ALLUVUS(this.voimalik_alluvus_id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void VOIMALIK_ALLUVUS.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void VOIMALIK_ALLUVUS.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public VOIMALIK_ALLUVUS VOIMALIK_ALLUVUS.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        VOIMALIK_ALLUVUS merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager VOIMALIK_ALLUVUS.entityManager() {
        EntityManager em = new VOIMALIK_ALLUVUS().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long VOIMALIK_ALLUVUS.countVOIMALIK_ALLUVUS() {
        return entityManager().createQuery("SELECT COUNT(o) FROM VOIMALIK_ALLUVUS o", Long.class).getSingleResult();
    }
    
    public static List<VOIMALIK_ALLUVUS> VOIMALIK_ALLUVUS.findAllVOIMALIK_ALLUVUS() {
        return entityManager().createQuery("SELECT o FROM VOIMALIK_ALLUVUS o", VOIMALIK_ALLUVUS.class).getResultList();
    }
    
    public static VOIMALIK_ALLUVUS VOIMALIK_ALLUVUS.findVOIMALIK_ALLUVUS(Long voimalik_alluvus_id) {
        if (voimalik_alluvus_id == null) return null;
        return entityManager().find(VOIMALIK_ALLUVUS.class, voimalik_alluvus_id);
    }
    
    public static List<VOIMALIK_ALLUVUS> VOIMALIK_ALLUVUS.findVOIMALIK_ALLUVUSEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM VOIMALIK_ALLUVUS o", VOIMALIK_ALLUVUS.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}