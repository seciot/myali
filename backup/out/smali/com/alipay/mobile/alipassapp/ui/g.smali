.class final Lcom/alipay/mobile/alipassapp/ui/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/f;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/f;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/g;->a:Lcom/alipay/mobile/alipassapp/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/g;->a:Lcom/alipay/mobile/alipassapp/ui/f;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/f;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->p(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/g;->a:Lcom/alipay/mobile/alipassapp/ui/f;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/f;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/g;->a:Lcom/alipay/mobile/alipassapp/ui/f;

    iget-object v1, v1, Lcom/alipay/mobile/alipassapp/ui/f;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->e(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/g;->a:Lcom/alipay/mobile/alipassapp/ui/f;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/f;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->q(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/g;->a:Lcom/alipay/mobile/alipassapp/ui/f;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/f;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->b()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/g;->a:Lcom/alipay/mobile/alipassapp/ui/f;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/f;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/g;->a:Lcom/alipay/mobile/alipassapp/ui/f;

    iget-object v1, v1, Lcom/alipay/mobile/alipassapp/ui/f;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->e(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
