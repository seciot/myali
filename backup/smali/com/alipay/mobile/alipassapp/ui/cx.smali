.class final Lcom/alipay/mobile/alipassapp/ui/cx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/kabaoprod/core/model/model/RemindInfo;

.field final synthetic b:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity_;Lcom/alipay/kabaoprod/core/model/model/RemindInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/cx;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/cx;->a:Lcom/alipay/kabaoprod/core/model/model/RemindInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/cx;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/cx;->a:Lcom/alipay/kabaoprod/core/model/model/RemindInfo;

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity_;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity_;Lcom/alipay/kabaoprod/core/model/model/RemindInfo;)V

    return-void
.end method
