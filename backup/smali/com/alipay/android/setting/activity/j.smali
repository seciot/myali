.class final Lcom/alipay/android/setting/activity/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/ArrayAdapter;

.field final synthetic b:Lcom/alipay/android/setting/activity/PaymentChannelActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/setting/activity/PaymentChannelActivity;Landroid/widget/ArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/setting/activity/j;->b:Lcom/alipay/android/setting/activity/PaymentChannelActivity;

    iput-object p2, p0, Lcom/alipay/android/setting/activity/j;->a:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/setting/activity/j;->b:Lcom/alipay/android/setting/activity/PaymentChannelActivity;

    invoke-static {v0, p2}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->a(Lcom/alipay/android/setting/activity/PaymentChannelActivity;I)I

    iget-object v1, p0, Lcom/alipay/android/setting/activity/j;->b:Lcom/alipay/android/setting/activity/PaymentChannelActivity;

    iget-object v0, p0, Lcom/alipay/android/setting/activity/j;->b:Lcom/alipay/android/setting/activity/PaymentChannelActivity;

    invoke-static {v0}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->a(Lcom/alipay/android/setting/activity/PaymentChannelActivity;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->a(Lcom/alipay/android/setting/activity/PaymentChannelActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/setting/activity/j;->b:Lcom/alipay/android/setting/activity/PaymentChannelActivity;

    invoke-static {v0}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->b(Lcom/alipay/android/setting/activity/PaymentChannelActivity;)Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/setting/activity/j;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setLeftText(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
