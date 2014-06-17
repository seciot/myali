.class public final Lcom/alipay/mobile/alipassapp/ui/common/aq;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Map;
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

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/alipassapp/ui/common/aq;->a:Ljava/util/Map;

    const-string/jumbo v1, "coupon"

    const-class v2, Lcom/alipay/mobile/alipassapp/viewcontrol/CouponViewControl;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/common/aq;->a:Ljava/util/Map;

    const-string/jumbo v1, "boardingPass"

    const-class v2, Lcom/alipay/mobile/alipassapp/viewcontrol/BoardingPassViewControl;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/common/aq;->a:Ljava/util/Map;

    const-string/jumbo v1, "eventTicket"

    const-class v2, Lcom/alipay/mobile/alipassapp/viewcontrol/EventTicketViewControl;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/alipassapp/ui/common/aq;->b:Ljava/util/List;

    const-string/jumbo v1, "tourist"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/common/aq;->b:Ljava/util/List;

    const-string/jumbo v1, "hotel"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/common/aq;->b:Ljava/util/List;

    const-string/jumbo v1, "boarding"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/common/aq;->b:Ljava/util/List;

    const-string/jumbo v1, "air"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/common/aq;->b:Ljava/util/List;

    const-string/jumbo v1, "train"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/common/aq;->b:Ljava/util/List;

    const-string/jumbo v1, "bus"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/common/aq;->b:Ljava/util/List;

    const-string/jumbo v1, "ship"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
