.class final Lcom/alipay/mobile/alipassapp/ui/widget/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/ev;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;Lcom/alipay/mobile/alipassapp/ui/ev;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/b;->e:Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/widget/b;->a:Lcom/alipay/mobile/alipassapp/ui/ev;

    iput-object p3, p0, Lcom/alipay/mobile/alipassapp/ui/widget/b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/alipassapp/ui/widget/b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/alipassapp/ui/widget/b;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/b;->a:Lcom/alipay/mobile/alipassapp/ui/ev;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/widget/b;->a:Lcom/alipay/mobile/alipassapp/ui/ev;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/widget/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/widget/b;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/alipassapp/ui/ev;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
