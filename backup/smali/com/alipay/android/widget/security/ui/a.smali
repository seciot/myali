.class final Lcom/alipay/android/widget/security/ui/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/a;->a:Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/a;->a:Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "20000057"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "-"

    const-string/jumbo v7, "securityHome"

    const-string/jumbo v8, "securityQuitButton"

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/a;->a:Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->b(Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/a;->a:Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;

    sget v3, Lcom/alipay/mobile/more/R$string;->c:I

    invoke-static {v2, v3}, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->a(Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/a;->a:Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;

    sget v4, Lcom/alipay/mobile/more/R$string;->b:I

    invoke-static {v3, v4}, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->a(Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/widget/security/ui/b;

    invoke-direct {v4, p0}, Lcom/alipay/android/widget/security/ui/b;-><init>(Lcom/alipay/android/widget/security/ui/a;)V

    iget-object v5, p0, Lcom/alipay/android/widget/security/ui/a;->a:Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;

    sget v6, Lcom/alipay/mobile/more/R$string;->a:I

    invoke-static {v5, v6}, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->a(Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/android/widget/security/ui/c;

    invoke-direct {v6, p0}, Lcom/alipay/android/widget/security/ui/c;-><init>(Lcom/alipay/android/widget/security/ui/a;)V

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
