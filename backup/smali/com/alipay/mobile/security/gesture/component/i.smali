.class final Lcom/alipay/mobile/security/gesture/component/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/component/i;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/i;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->mPatternChangeListener:Lcom/alipay/mobile/security/gesture/component/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/i;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->mPatternChangeListener:Lcom/alipay/mobile/security/gesture/component/j;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/security/gesture/component/j;->a(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
