.class public final Lcom/taobao/securityjni/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/securityjni/connector/ConnectorHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getApiUrl()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "http://api.m.taobao.com/work/dns_cache"

    invoke-static {}, Lcom/taobao/securityjni/GlobalInit;->GetSecurityDebugMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "http://10.73.59.100/dns.txt"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DsCfgConnectorHelper:url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public final syncPaser(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method
