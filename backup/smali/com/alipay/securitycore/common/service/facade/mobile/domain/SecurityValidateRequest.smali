.class public Lcom/alipay/securitycore/common/service/facade/mobile/domain/SecurityValidateRequest;
.super Ljava/lang/Object;


# instance fields
.field public mobileOperationEnvironment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public securityId:Ljava/lang/String;

.field public simplePassword:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/securitycore/common/service/facade/mobile/domain/SecurityValidateRequest;->mobileOperationEnvironment:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getMobileOperationEnvironment()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/securitycore/common/service/facade/mobile/domain/SecurityValidateRequest;->mobileOperationEnvironment:Ljava/util/Map;

    return-object v0
.end method

.method public getSecurityId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/securitycore/common/service/facade/mobile/domain/SecurityValidateRequest;->securityId:Ljava/lang/String;

    return-object v0
.end method

.method public getSimplePassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/securitycore/common/service/facade/mobile/domain/SecurityValidateRequest;->simplePassword:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/securitycore/common/service/facade/mobile/domain/SecurityValidateRequest;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setMobileOperationEnvironment(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/securitycore/common/service/facade/mobile/domain/SecurityValidateRequest;->mobileOperationEnvironment:Ljava/util/Map;

    return-void
.end method

.method public setSecurityId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/securitycore/common/service/facade/mobile/domain/SecurityValidateRequest;->securityId:Ljava/lang/String;

    return-void
.end method

.method public setSimplePassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/securitycore/common/service/facade/mobile/domain/SecurityValidateRequest;->simplePassword:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/securitycore/common/service/facade/mobile/domain/SecurityValidateRequest;->userId:Ljava/lang/String;

    return-void
.end method
