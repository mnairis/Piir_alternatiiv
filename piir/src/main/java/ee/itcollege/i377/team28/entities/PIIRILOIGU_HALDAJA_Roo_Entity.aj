// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.i377.team28.entities;

import ee.itcollege.i377.team28.entities.PIIRILOIGU_HALDAJA;
import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PIIRILOIGU_HALDAJA_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager PIIRILOIGU_HALDAJA.entityManager;
    
    @Version
    @Column(name = "version")
    private Integer PIIRILOIGU_HALDAJA.version;
    
    public Integer PIIRILOIGU_HALDAJA.getVersion() {
        return this.version;
    }
    
    public void PIIRILOIGU_HALDAJA.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void PIIRILOIGU_HALDAJA.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PIIRILOIGU_HALDAJA.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PIIRILOIGU_HALDAJA attached = PIIRILOIGU_HALDAJA.findPIIRILOIGU_HALDAJA(this.piiriloigu_haldaja_id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PIIRILOIGU_HALDAJA.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PIIRILOIGU_HALDAJA.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PIIRILOIGU_HALDAJA PIIRILOIGU_HALDAJA.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PIIRILOIGU_HALDAJA merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager PIIRILOIGU_HALDAJA.entityManager() {
        EntityManager em = new PIIRILOIGU_HALDAJA().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PIIRILOIGU_HALDAJA.countPIIRILOIGU_HALDAJAs() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PIIRILOIGU_HALDAJA o", Long.class).getSingleResult();
    }
    
    public static List<PIIRILOIGU_HALDAJA> PIIRILOIGU_HALDAJA.findAllPIIRILOIGU_HALDAJAs() {
        return entityManager().createQuery("SELECT o FROM PIIRILOIGU_HALDAJA o", PIIRILOIGU_HALDAJA.class).getResultList();
    }
    
    public static PIIRILOIGU_HALDAJA PIIRILOIGU_HALDAJA.findPIIRILOIGU_HALDAJA(Long piiriloigu_haldaja_id) {
        if (piiriloigu_haldaja_id == null) return null;
        return entityManager().find(PIIRILOIGU_HALDAJA.class, piiriloigu_haldaja_id);
    }
    
    public static List<PIIRILOIGU_HALDAJA> PIIRILOIGU_HALDAJA.findPIIRILOIGU_HALDAJAEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PIIRILOIGU_HALDAJA o", PIIRILOIGU_HALDAJA.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}