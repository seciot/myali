.class final Lcom/alipay/android/setting/activity/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/RadioButton;

.field final synthetic b:Lcom/alipay/android/setting/activity/l;

.field final synthetic c:Lcom/alipay/android/setting/activity/PaymentChannelActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/setting/activity/PaymentChannelActivity;Landroid/widget/RadioButton;Lcom/alipay/android/setting/activity/l;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/setting/activity/k;->c:Lcom/alipay/android/setting/activity/PaymentChannelActivity;

    iput-object p2, p0, Lcom/alipay/android/setting/activity/k;->a:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/alipay/android/setting/activity/k;->b:Lcom/alipay/android/setting/activity/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/setting/activity/k;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->toggle()V

    const-string/jumbo v0, "SPSafePay"

    iget-object v1, p0, Lcom/alipay/android/setting/activity/k;->b:Lcom/alipay/android/setting/activity/l;

    iget-object v1, v1, Lcom/alipay/android/setting/activity/l;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/mini/util/LogAgent;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/k;->b:Lcom/alipay/android/setting/activity/l;

    iget-boolean v0, v0, Lcom/alipay/android/setting/activity/l;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/setting/activity/k;->c:Lcom/alipay/android/setting/activity/PaymentChannelActivity;

    iget-object v1, p0, Lcom/alipay/android/setting/activity/k;->b:Lcom/alipay/android/setting/activity/l;

    iget-object v1, v1, Lcom/alipay/android/setting/activity/l;->e:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->a(Lcom/alipay/android/setting/activity/PaymentChannelActivity;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/k;->c:Lcom/alipay/android/setting/activity/PaymentChannelActivity;

    invoke-static {v0}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->b(Lcom/alipay/android/setting/activity/PaymentChannelActivity;)Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/k;->c:Lcom/alipay/android/setting/activity/PaymentChannelActivity;

    invoke-static {v0}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->c(Lcom/alipay/android/setting/activity/PaymentChannelActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/setting/activity/k;->c:Lcom/alipay/android/setting/activity/PaymentChannelActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->a(Lcom/alipay/android/setting/activity/PaymentChannelActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/setting/activity/k;->c:Lcom/alipay/android/setting/activity/PaymentChannelActivity;

    invoke-static {v0}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->b(Lcom/alipay/android/setting/activity/PaymentChannelActivity;)Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/k;->c:Lcom/alipay/android/setting/activity/PaymentChannelActivity;

    invoke-static {v0}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->c(Lcom/alipay/android/setting/activity/PaymentChannelActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
