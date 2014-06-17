.class final Lcom/alipay/mobile/alipassapp/viewcontrol/n;
.super Landroid/text/style/ClickableSpan;


# instance fields
.field a:Lcom/alipay/mobile/alipassapp/ui/common/a;

.field final synthetic b:Lcom/alipay/mobile/alipassapp/viewcontrol/l;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/alipassapp/viewcontrol/l;Lcom/alipay/mobile/alipassapp/ui/common/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/n;->b:Lcom/alipay/mobile/alipassapp/viewcontrol/l;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/n;->a:Lcom/alipay/mobile/alipassapp/ui/common/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/n;->a:Lcom/alipay/mobile/alipassapp/ui/common/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/n;->a:Lcom/alipay/mobile/alipassapp/ui/common/a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/alipassapp/ui/common/a;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
