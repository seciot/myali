.class public Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "withdraw_main"
.end annotation


# instance fields
.field a:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private b:Lcom/alipay/mobile/commonui/widget/APInputBox;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/alipay/mobile/withdraw/ui/p;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;

.field private l:Landroid/view/View;

.field private m:Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;

.field private n:Lcom/alipay/mobile/commonui/widget/APTableView;

.field private o:Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter;

.field private p:Landroid/app/AlertDialog;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;

.field private s:Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter;

.field private t:Landroid/app/AlertDialog;

.field private u:Ljava/lang/String;

.field private v:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->f:Lcom/alipay/mobile/withdraw/ui/p;

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->g:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->k:Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->o:Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter;

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->p:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->s:Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter;

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->t:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->v:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->p:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;)Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->r:Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;)Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->k:Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    sget v1, Lcom/alipay/android/phone/wealth/withdraw/R$string;->a:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/alipay/asset/common/InputValidator;->checkAmount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/asset/common/ValidateResult;

    move-result-object v1

    iget-boolean v2, v1, Lcom/alipay/asset/common/ValidateResult;->bRet:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v1, v1, Lcom/alipay/asset/common/ValidateResult;->strErr:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/wealth/withdraw/R$layout;->d:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->addStatesFromChildren()Z

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->o:Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/alipay/mobile/withdraw/ui/m;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/withdraw/ui/m;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/alipay/android/phone/wealth/withdraw/R$string;->e:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->p:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->p:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->p:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v2, 0x0

    const-string/jumbo v6, "-"

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "20000033"

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->t:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)Lcom/alipay/mobile/commonui/widget/APInputBox;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->b:Lcom/alipay/mobile/commonui/widget/APInputBox;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method private g()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->m:Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;

    const-string/jumbo v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "BANK_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->k:Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;

    invoke-virtual {v3}, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/alipay/mobile/common/misc/ExtViewUtil;->getLocalImage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->setLeftImage(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->m:Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->k:Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->setLeftText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->m:Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/alipay/android/phone/wealth/withdraw/R$string;->l:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->k:Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->k:Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->setLeftText2(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->m:Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->setArrowImageVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->m:Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->setClickable(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->e()V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->k:Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->m:Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->setArrowImageVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->m:Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->setClickable(Z)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method private h()V
    .locals 8

    const/4 v1, 0x0

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$string;->m:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$string;->n:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/withdraw/ui/o;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/withdraw/ui/o;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)V

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$string;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/withdraw/ui/b;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/withdraw/ui/b;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic i(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method private i()V
    .locals 3

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$string;->h:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic j(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->o:Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter;

    return-object v0
.end method

.method static synthetic k(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->k:Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;

    return-object v0
.end method

.method static synthetic l(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->g()V

    return-void
.end method

.method static synthetic m(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->s:Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter;

    return-object v0
.end method

.method static synthetic n(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->r:Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;

    return-object v0
.end method

.method static synthetic o(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic p(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic q(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic r(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/android/phone/wealth/withdraw/R$string;->a:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->v:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/withdraw/ui/a;

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-direct {v0, p0, p0, v1}, Lcom/alipay/mobile/withdraw/ui/a;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;Landroid/app/Activity;Landroid/view/View;)V

    sget v1, Lcom/alipay/android/phone/wealth/withdraw/R$string;->b:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->showWarningTip(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->i()V

    invoke-virtual {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->b()V

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$id;->o:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->l:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$id;->e:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->b:Lcom/alipay/mobile/commonui/widget/APInputBox;

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->b:Lcom/alipay/mobile/commonui/widget/APInputBox;

    new-instance v1, Lcom/alipay/mobile/commonui/inputfomatter/APMoneyFormatter;

    invoke-direct {v1}, Lcom/alipay/mobile/commonui/inputfomatter/APMoneyFormatter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setTextFormatter(Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;)V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->f:Lcom/alipay/mobile/withdraw/ui/p;

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->b:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/withdraw/ui/p;->addNeedCheckView(Landroid/widget/EditText;)V

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$id;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->c:Landroid/widget/TextView;

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$id;->d:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->e:Landroid/widget/TextView;

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$id;->l:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->m:Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->m:Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;

    new-instance v1, Lcom/alipay/mobile/withdraw/ui/f;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/withdraw/ui/f;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$id;->f:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->n:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->n:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->n:Lcom/alipay/mobile/commonui/widget/APTableView;

    new-instance v1, Lcom/alipay/mobile/withdraw/ui/g;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/withdraw/ui/g;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$id;->g:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->f:Lcom/alipay/mobile/withdraw/ui/p;

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/withdraw/ui/p;->addNeedEnabledButton(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->d:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/withdraw/ui/h;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/withdraw/ui/h;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->b:Lcom/alipay/mobile/commonui/widget/APInputBox;

    const-string/jumbo v1, "withdraw"

    const-string/jumbo v2, "inputMoney"

    new-instance v3, Lcom/alipay/mobile/withdraw/ui/e;

    invoke-direct {v3, p0, v1, v2}, Lcom/alipay/mobile/withdraw/ui/e;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto/16 :goto_0
.end method

.method protected a(Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;)V
    .locals 8
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->dismissProgressDialog()V

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;->passwordType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;->bankList:Ljava/util/List;

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;

    new-instance v5, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;

    invoke-direct {v5}, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;-><init>()V

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->a(Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;)Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;

    move-result-object v0

    iget-object v5, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->o:Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->o:Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter;->notifyDataSetChanged()V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->h:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->h:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v1, v2

    move v3, v2

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->i()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->h:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->h:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->d()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "katong"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->j:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->c()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->i:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->k:Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;

    move v3, v4

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    move v3, v2

    :cond_6
    if-nez v3, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->k:Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;

    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->k:Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->a(Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->d()V

    invoke-direct {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->g()V

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;->availableAmount:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_8
    invoke-direct {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->h()V

    goto :goto_2
.end method

.method protected a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->dismissProgressDialog()V

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;->resultView:Ljava/lang/String;

    new-instance v1, Lcom/alipay/mobile/withdraw/ui/k;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/withdraw/ui/k;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)V

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/misc/ExtViewUtil;->simpleAlert(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lcom/alipay/asset/common/InputValidator;->checkPaymentPassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/asset/common/ValidateResult;

    move-result-object v2

    iget-boolean v3, v2, Lcom/alipay/asset/common/ValidateResult;->bRet:Z

    if-nez v3, :cond_0

    iget-object v0, v2, Lcom/alipay/asset/common/ValidateResult;->strErr:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->toast(Ljava/lang/String;I)V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->i()V

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    new-instance v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/request/WithdrawReq;

    invoke-direct {v0}, Lcom/alipay/kabaoprod/biz/financial/withdraw/request/WithdrawReq;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->k:Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/request/WithdrawReq;->bankAccountNo:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->k:Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/request/WithdrawReq;->bankMark:Ljava/lang/String;

    iput-object p1, v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/request/WithdrawReq;->amount:Ljava/lang/String;

    iput-object p2, v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/request/WithdrawReq;->payPassword:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->u:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/request/WithdrawReq;->passwordType:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->r:Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;

    invoke-virtual {v1}, Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/request/WithdrawReq;->arrivedDateType:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/request/WithdrawReq;->needResendRandomCode:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/request/WithdrawReq;->randomCode:Ljava/lang/String;

    :try_start_0
    new-instance v1, Lcom/alipay/mobile/withdraw/rpc/WithdrawRpcBiz;

    iget-object v2, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/withdraw/rpc/WithdrawRpcBiz;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/withdraw/rpc/WithdrawRpcBiz;->a(Lcom/alipay/kabaoprod/biz/financial/withdraw/request/WithdrawReq;)Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

    move-result-object v0

    iget-boolean v1, v0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;->success:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->b(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->c()V

    throw v0
.end method

.method protected b()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    :try_start_0
    new-instance v0, Lcom/alipay/mobile/withdraw/rpc/WithdrawRpcBiz;

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/withdraw/rpc/WithdrawRpcBiz;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/withdraw/rpc/WithdrawRpcBiz;->a()Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;

    move-result-object v0

    iget-boolean v1, v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;->success:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->a(Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->b(Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->c()V

    throw v0
.end method

.method protected b(Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;)V
    .locals 8
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->dismissProgressDialog()V

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;->resultCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;->resultView:Ljava/lang/String;

    const-string/jumbo v3, "608"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "600"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->h()V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$string;->f:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/withdraw/ui/c;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/withdraw/ui/c;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method protected b(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->dismissProgressDialog()V

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;->resultCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;->resultView:Ljava/lang/String;

    const-string/jumbo v3, "2050"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "smscheck_memo_key"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v3, "190"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "191"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "1830"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "1831"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$string;->f:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "192"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$string;->g:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/withdraw/ui/d;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/withdraw/ui/d;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)V

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$string;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "1832"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$string;->g:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/withdraw/ui/l;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/withdraw/ui/l;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)V

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$string;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->RSAEncrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->c()V

    throw v0
.end method

.method protected c()V
    .locals 0
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->dismissProgressDialog()V

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->b:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final d()V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->k:Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/withdraw/bean/WithdrawBankInfo;->f()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/ArriveDateInfo;

    new-instance v4, Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;

    invoke-direct {v4}, Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;-><init>()V

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;->a(Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/ArriveDateInfo;)V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->q:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->s:Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->s:Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter;->notifyDataSetChanged()V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->q:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->r:Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->r:Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;->a(Z)V

    :cond_2
    return-void
.end method

.method protected final e()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->q:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->n:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->r:Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;

    invoke-virtual {v1}, Lcom/alipay/mobile/withdraw/bean/WithdrawArriveDate;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->n:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setArrowImageVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->n:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setClickable(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->n:Lcom/alipay/mobile/commonui/widget/APTableView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setArrowImageVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->n:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setClickable(Z)V

    goto :goto_0
.end method

.method protected final f()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/wealth/withdraw/R$layout;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->addStatesFromChildren()Z

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->s:Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/alipay/mobile/withdraw/ui/n;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/withdraw/ui/n;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/alipay/android/phone/wealth/withdraw/R$string;->d:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->t:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->t:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->t:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v0, "isSmsCheckOk"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string/jumbo v0, "withdraw"

    const-string/jumbo v1, "backIcon"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "KABAOPROD_WITHDRAW_HIDE"

    invoke-static {v1}, Lcom/alipay/mobile/base/config/SwitchConfigUtils;->getConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->v:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v0, v0, Lcom/alipay/mobile/withdraw/app/WithdrawApp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/withdraw/app/WithdrawApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/withdraw/app/WithdrawApp;->getBankId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/withdraw/app/WithdrawApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/withdraw/app/WithdrawApp;->getBankMark()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/withdraw/app/WithdrawApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/withdraw/app/WithdrawApp;->getBankIdLast4()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->j:Ljava/lang/String;

    :cond_0
    new-instance v0, Lcom/alipay/mobile/withdraw/ui/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/withdraw/ui/p;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;B)V

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->f:Lcom/alipay/mobile/withdraw/ui/p;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->g:Ljava/util/ArrayList;

    new-instance v0, Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->g:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->o:Lcom/alipay/mobile/withdraw/ui/BankCardListAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->q:Ljava/util/List;

    new-instance v0, Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->q:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->s:Lcom/alipay/mobile/withdraw/ui/ArriveDateListAdapter;

    return-void
.end method
