.class final Lcom/alipay/mobile/alipassapp/ui/ds;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/dr;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/dr;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/ds;->a:Lcom/alipay/mobile/alipassapp/ui/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ds;->a:Lcom/alipay/mobile/alipassapp/ui/dr;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/dr;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    const-string/jumbo v1, "del"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ds;->a:Lcom/alipay/mobile/alipassapp/ui/dr;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/dr;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->s(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ds;->a:Lcom/alipay/mobile/alipassapp/ui/dr;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/dr;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ds;->a:Lcom/alipay/mobile/alipassapp/ui/dr;

    iget-object v1, v1, Lcom/alipay/mobile/alipassapp/ui/dr;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->t(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ds;->a:Lcom/alipay/mobile/alipassapp/ui/dr;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/dr;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ds;->a:Lcom/alipay/mobile/alipassapp/ui/dr;

    iget-object v1, v1, Lcom/alipay/mobile/alipassapp/ui/dr;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->t(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
