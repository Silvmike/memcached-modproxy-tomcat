package ru.hardcoders.memcache;

import de.javakaffee.web.msm.MemcachedBackupSessionManager;

/**
 * Created by silvmike on 04.06.16.
 */
public class BackupSessionManager extends MemcachedBackupSessionManager {

    private static final String FAILOVER_NODES = "ru.hardcoders.memcache.failoverNodes";

    @Override
    public void setFailoverNodes(String failoverNodes) {
        if (System.getProperty(FAILOVER_NODES) == null) {
            super.setFailoverNodes(failoverNodes);
        } else {
            super.setFailoverNodes(System.getProperty(FAILOVER_NODES));
        }
    }
}