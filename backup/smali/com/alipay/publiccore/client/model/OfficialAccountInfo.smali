.class public Lcom/alipay/publiccore/client/model/OfficialAccountInfo;
.super Lcom/alipay/publiccore/client/model/OfficialBaseInfo;


# static fields
.field private static final serialVersionUID:J = -0x3b079e7819d74290L


# instance fields
.field public followCount:Ljava/lang/String;

.field public followType:Ljava/lang/String;

.field public isFollow:Ljava/lang/String;

.field public loginId:Ljava/lang/String;

.field public properties:Lcom/alipay/publiccore/client/model/OperateProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/publiccore/client/model/OfficialBaseInfo;-><init>()V

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/publiccore/client/model/OfficialAccountInfo;->isFollow:Ljava/lang/String;

    return-void
.end method
