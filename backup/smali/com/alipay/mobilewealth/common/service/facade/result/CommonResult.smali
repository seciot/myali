.class public Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;
.super Lcom/alipay/mobilewealth/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public resultCode:Ljava/lang/String;

.field public resultDesc:Ljava/lang/String;

.field public resultView:Ljava/lang/String;

.field public showType:I

.field public success:Z

.field public weavingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/common/service/facade/result/weaving/MobileRedirectWeaving;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/util/ToString;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;->success:Z

    iput v0, p0, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;->showType:I

    return-void
.end method
