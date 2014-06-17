.class final Lcom/alipay/mobile/withdraw/ui/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/withdraw/ui/m;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/m;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    invoke-static {v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->j(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter;->getCount()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    int-to-long v3, v0

    cmp-long v3, v3, p4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/withdraw/ui/m;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    invoke-static {v3}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->j(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter;->a(I)Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->a(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/m;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    long-to-int v0, p4

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;

    invoke-static {v1, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->a(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;)Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/m;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    invoke-static {v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->k(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->a(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/m;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->d()V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/m;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    invoke-static {v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->j(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/m;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    invoke-static {v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->l(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/m;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    invoke-static {v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->a(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
