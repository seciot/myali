.class final Lcom/alipay/mobile/about/ui/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/about/ui/e;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/ui/e;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/ui/f;->a:Lcom/alipay/mobile/about/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/f;->a:Lcom/alipay/mobile/about/ui/e;

    iget-object v0, v0, Lcom/alipay/mobile/about/ui/e;->a:Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->finish()V

    return-void
.end method
