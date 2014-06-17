.class public abstract Lcom/alipay/mobile/framework/BaseMetaInfo;
.super Ljava/lang/Object;


# instance fields
.field public applications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/app/ApplicationDescription;",
            ">;"
        }
    .end annotation
.end field

.field public broadcastReceivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;",
            ">;"
        }
    .end annotation
.end field

.field public entry:Ljava/lang/String;

.field public interfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/interfaces/InterfaceDescription;",
            ">;"
        }
    .end annotation
.end field

.field public services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ServiceDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->applications:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->services:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->broadcastReceivers:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->entry:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->interfaces:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getApplications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/app/ApplicationDescription;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->applications:Ljava/util/List;

    return-object v0
.end method

.method public getBroadcastReceivers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->broadcastReceivers:Ljava/util/List;

    return-object v0
.end method

.method public getEntry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->entry:Ljava/lang/String;

    return-object v0
.end method

.method public getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ServiceDescription;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->services:Ljava/util/List;

    return-object v0
.end method

.method public setApplications(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/app/ApplicationDescription;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->applications:Ljava/util/List;

    return-void
.end method

.method public setBroadcastReceivers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->broadcastReceivers:Ljava/util/List;

    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->applications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->services:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->broadcastReceivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->interfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/MicroDescription;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/MicroDescription;->setClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/MicroDescription;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/MicroDescription;->setClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/MicroDescription;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/MicroDescription;->setClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/MicroDescription;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/MicroDescription;->setClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_3
.end method

.method public setEntry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->entry:Ljava/lang/String;

    return-void
.end method

.method public setInterfaces(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/interfaces/InterfaceDescription;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->interfaces:Ljava/util/List;

    return-void
.end method

.method public setServices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ServiceDescription;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->services:Ljava/util/List;

    return-void
.end method
