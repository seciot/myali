.class public Lcom/alipay/publiccore/client/model/OfficialRecommendInfo;
.super Lcom/alipay/publiccore/client/model/OfficialBaseInfo;


# static fields
.field private static final serialVersionUID:J = -0x4de55ef8dd6be88dL


# instance fields
.field public followCount:Ljava/lang/String;

.field public isFollow:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/publiccore/client/model/OfficialBaseInfo;-><init>()V

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/publiccore/client/model/OfficialRecommendInfo;->isFollow:Ljava/lang/String;

    return-void
.end method
