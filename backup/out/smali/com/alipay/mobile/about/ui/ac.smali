.class final Lcom/alipay/mobile/about/ui/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/mobile/about/ui/FloatWindowBigView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/ui/FloatWindowBigView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/ui/ac;->b:Lcom/alipay/mobile/about/ui/FloatWindowBigView;

    iput-object p2, p0, Lcom/alipay/mobile/about/ui/ac;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/about/ui/ag;->a()Lcom/alipay/mobile/about/ui/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/ac;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/about/ui/ag;->d(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/mobile/about/ui/ag;->a()Lcom/alipay/mobile/about/ui/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/ac;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/about/ui/ag;->a(Landroid/content/Context;)V

    return-void
.end method
