.class public final Lcom/alipay/mobile/alipassapp/ui/common/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/alipassapp/ui/common/i;->a:Ljava/util/Map;

    const-string/jumbo v1, "can_use"

    sget v2, Lcom/alipay/mobile/alipassapp/R$drawable;->coupon_stamp_canuse:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/common/i;->a:Ljava/util/Map;

    const-string/jumbo v1, "used"

    sget v2, Lcom/alipay/mobile/alipassapp/R$drawable;->coupon_stamp_used:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/common/i;->a:Ljava/util/Map;

    const-string/jumbo v1, "expired"

    sget v2, Lcom/alipay/mobile/alipassapp/R$drawable;->coupon_stamp_expired:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/common/i;->a:Ljava/util/Map;

    const-string/jumbo v1, "invalid"

    sget v2, Lcom/alipay/mobile/alipassapp/R$drawable;->coupon_stamp_invalidate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
