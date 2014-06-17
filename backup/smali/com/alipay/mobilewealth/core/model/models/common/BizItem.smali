.class public Lcom/alipay/mobilewealth/core/model/models/common/BizItem;
.super Lcom/alipay/mobilewealth/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bizItemCode:Ljava/lang/String;

.field public bizItemName:Ljava/lang/String;

.field public bizItemProp:Ljava/util/Map;
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

.field public bizItemValue:Ljava/lang/String;

.field public click:Z

.field public clickType:Ljava/lang/String;

.field public clickUrl:Ljava/lang/String;

.field public index:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/util/ToString;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/mobilewealth/core/model/models/common/BizItem;->index:I

    return-void
.end method
