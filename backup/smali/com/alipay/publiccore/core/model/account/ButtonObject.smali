.class public Lcom/alipay/publiccore/core/model/account/ButtonObject;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public actionParam:Ljava/lang/String;

.field public actionType:Ljava/lang/String;

.field public authType:Ljava/lang/String;

.field public clientPlatform:Ljava/lang/String;

.field public envMode:Ljava/lang/String;

.field public maxVersion:Ljava/lang/String;

.field public minVersion:Ljava/lang/String;

.field public msgShowType:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public subButton:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/core/model/account/ButtonObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionParam()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->actionParam:Ljava/lang/String;

    return-object v0
.end method

.method public getActionType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->actionType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSubButton()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/core/model/account/ButtonObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->subButton:Ljava/util/List;

    return-object v0
.end method

.method public setActionParam(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->actionParam:Ljava/lang/String;

    return-void
.end method

.method public setActionType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->actionType:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->name:Ljava/lang/String;

    return-void
.end method

.method public setSubButton(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/core/model/account/ButtonObject;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->subButton:Ljava/util/List;

    return-void
.end method
