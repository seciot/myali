.class public Lcom/alipay/android/setting/activity/PaymentChannelActivity;
.super Lcom/alipay/android/setting/activity/BaseSettingActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private d:Landroid/widget/RadioGroup;

.field private e:I

.field private f:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Landroid/util/SparseArray;

.field private k:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

.field private l:Landroid/widget/CheckBox;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/alipay/mobile/commonui/widget/APTableView;

.field private o:Landroid/widget/TextView;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/setting/activity/BaseSettingActivity;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->j:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->s:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/setting/activity/PaymentChannelActivity;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->g:I

    return p1
.end method

.method static synthetic a(Lcom/alipay/android/setting/activity/PaymentChannelActivity;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->j:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/setting/activity/PaymentChannelActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/setting/activity/PaymentChannelActivity;Landroid/widget/ArrayAdapter;Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;

    invoke-direct {v0, p2}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a()V

    iget v1, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->g:I

    new-instance v2, Lcom/alipay/android/setting/activity/j;

    invoke-direct {v2, p0, p1}, Lcom/alipay/android/setting/activity/j;-><init>(Lcom/alipay/android/setting/activity/PaymentChannelActivity;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->b()Lcom/alipay/android/app/widget/CustomAlertDialog;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/setting/activity/PaymentChannelActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->j:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    new-instance v3, Lcom/alipay/android/app/widget/CustomArrayAdapter;

    invoke-direct {v3, p0}, Lcom/alipay/android/app/widget/CustomArrayAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/setting/activity/l;

    iget-object v0, v0, Lcom/alipay/android/setting/activity/l;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->j:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/setting/activity/l;

    iget-object v0, v0, Lcom/alipay/android/setting/activity/l;->a:Ljava/lang/String;

    invoke-virtual {v5, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->f:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    new-instance v2, Lcom/alipay/android/setting/activity/i;

    invoke-direct {v2, p0, v3}, Lcom/alipay/android/setting/activity/i;-><init>(Lcom/alipay/android/setting/activity/PaymentChannelActivity;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/setting/activity/l;

    iget-object v0, v0, Lcom/alipay/android/setting/activity/l;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->h:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/setting/activity/l;

    iget-boolean v0, v0, Lcom/alipay/android/setting/activity/l;->c:Z

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->f:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/setting/activity/l;

    iget-object v0, v0, Lcom/alipay/android/setting/activity/l;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setLeftText(Ljava/lang/String;)V

    iput v1, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->g:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/setting/activity/l;

    iget-object v0, v0, Lcom/alipay/android/setting/activity/l;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->h:Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/android/setting/activity/PaymentChannelActivity;)Lcom/alipay/mobile/commonui/widget/APRadioTableView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->f:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/setting/activity/PaymentChannelActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .locals 10

    const/4 v3, 0x0

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/high16 v1, 0x4234

    invoke-static {p0, v1}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v4, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x10

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v0, 0x4120

    invoke-static {p0, v0}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/content/Context;F)I

    move-result v5

    const/high16 v0, 0x4180

    invoke-static {p0, v0}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/content/Context;F)I

    move-result v6

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    move v2, v3

    :goto_0
    if-ge v2, v7, :cond_4

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/setting/activity/l;

    invoke-virtual {p0}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v8, Lcom/alipay/android/app/R$layout;->am:I

    iget-object v9, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->d:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v8, v9, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    new-instance v8, Lcom/alipay/android/setting/activity/k;

    invoke-direct {v8, p0, v1, v0}, Lcom/alipay/android/setting/activity/k;-><init>(Lcom/alipay/android/setting/activity/PaymentChannelActivity;Landroid/widget/RadioButton;Lcom/alipay/android/setting/activity/l;)V

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v0, Lcom/alipay/android/setting/activity/l;->b:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setId(I)V

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    if-nez v2, :cond_1

    sget v8, Lcom/alipay/mobile/ui/R$drawable;->input_top_normal:I

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    :goto_1
    invoke-virtual {v1, v5, v3, v6, v3}, Landroid/widget/RadioButton;->setPadding(IIII)V

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->d:Landroid/widget/RadioGroup;

    invoke-virtual {v8, v1, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;I)V

    iget-boolean v0, v0, Lcom/alipay/android/setting/activity/l;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->d:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    iput v2, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->e:I

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v8, v7, -0x1

    if-ne v2, v8, :cond_2

    sget v8, Lcom/alipay/mobile/ui/R$drawable;->input_bottom_normal:I

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    sget v8, Lcom/alipay/mobile/ui/R$drawable;->input_center_normal:I

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    sget v8, Lcom/alipay/mobile/ui/R$drawable;->input_normal:I

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 12

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "success"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    sget v0, Lcom/alipay/android/app/R$drawable;->av:I

    sget v1, Lcom/alipay/android/app/R$string;->P:I

    invoke-static {p0, v0, v1}, Lcom/alipay/android/setting/widgets/CustomToast;->a(Landroid/app/Activity;II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->d()V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->n:Lcom/alipay/mobile/commonui/widget/APTableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->d:Landroid/widget/RadioGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->k:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->l:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->k:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->showToggleButton(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->q:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->l:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    const/4 v0, 0x5

    if-ne p2, v0, :cond_3

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "success"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    sget v0, Lcom/alipay/android/app/R$drawable;->ax:I

    sget v1, Lcom/alipay/android/app/R$string;->V:I

    invoke-static {p0, v0, v1}, Lcom/alipay/android/setting/widgets/CustomToast;->a(Landroid/app/Activity;II)V

    const-string/jumbo v0, "SPSafePay"

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->finish()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    return-void

    :cond_4
    :try_start_2
    const-string/jumbo v1, "success"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_5

    sget v0, Lcom/alipay/android/app/R$drawable;->av:I

    sget v1, Lcom/alipay/android/app/R$string;->P:I

    invoke-static {p0, v0, v1}, Lcom/alipay/android/setting/widgets/CustomToast;->a(Landroid/app/Activity;II)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_5
    :try_start_3
    const-string/jumbo v1, "ispointon"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->p:Z

    const-string/jumbo v1, "isautopayon"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->q:Z

    const-string/jumbo v1, "issimplepwd"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->b:Z

    const-string/jumbo v1, "needpwdforchannel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->r:Z

    const-string/jumbo v1, "channels"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v1, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->l:Landroid/widget/CheckBox;

    const-string/jumbo v3, "autopaytip"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v4, Lcom/alipay/android/setting/activity/l;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/alipay/android/setting/activity/l;-><init>(Lcom/alipay/android/setting/activity/PaymentChannelActivity;B)V

    const-string/jumbo v5, "code"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/android/setting/activity/l;->a:Ljava/lang/String;

    const-string/jumbo v5, "desc"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/android/setting/activity/l;->b:Ljava/lang/String;

    const-string/jumbo v5, "checked"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lcom/alipay/android/setting/activity/l;->c:Z

    const-string/jumbo v5, "hassubchannel"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lcom/alipay/android/setting/activity/l;->d:Z

    iget-boolean v5, v4, Lcom/alipay/android/setting/activity/l;->d:Z

    if-eqz v5, :cond_7

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v6, "subchannels"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v0, 0x0

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    :goto_3
    if-ge v0, v7, :cond_6

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v9, Lcom/alipay/android/setting/activity/l;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/alipay/android/setting/activity/l;-><init>(Lcom/alipay/android/setting/activity/PaymentChannelActivity;B)V

    const-string/jumbo v10, "code"

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/alipay/android/setting/activity/l;->a:Ljava/lang/String;

    const-string/jumbo v10, "desc"

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/alipay/android/setting/activity/l;->b:Ljava/lang/String;

    const-string/jumbo v10, "checked"

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v9, Lcom/alipay/android/setting/activity/l;->c:Z

    invoke-virtual {v5, v0, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iput-object v5, v4, Lcom/alipay/android/setting/activity/l;->e:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->a(Ljava/util/ArrayList;)V

    iget-boolean v0, v4, Lcom/alipay/android/setting/activity/l;->c:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->f:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->o:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    :cond_8
    :try_start_4
    invoke-virtual {p0}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/app/R$string;->U:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "msg"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/alipay/android/app/R$drawable;->av:I

    invoke-static {p0, v1, v0}, Lcom/alipay/android/setting/widgets/CustomToast;->a(Landroid/app/Activity;ILjava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->s:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->d:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/setting/activity/l;

    iget-object v0, v0, Lcom/alipay/android/setting/activity/l;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/android/setting/request/RequestContainer;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget-object v1, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/setting/request/RequestContainer;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget-object v1, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->k:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/android/setting/request/RequestContainer;->k:Z

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget-object v1, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->l:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/android/setting/request/RequestContainer;->l:Z

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget-boolean v1, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->b:Z

    iput-boolean v1, v0, Lcom/alipay/android/setting/request/RequestContainer;->m:Z

    iget-boolean v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iput-object p1, v0, Lcom/alipay/android/setting/request/RequestContainer;->g:Ljava/lang/String;

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/alipay/android/setting/request/RequestService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "local_data"

    iget-object v2, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public finish()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->d:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    iget v1, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->e:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->p:Z

    iget-object v1, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->k:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->isChecked()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->q:Z

    iget-object v1, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->l:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->j:Landroid/util/SparseArray;

    iget v2, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->g:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SPSafePay"

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->g(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->onBackPressed()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->r:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->c()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/android/app/R$layout;->aj:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->setContentView(I)V

    invoke-virtual {p0, v1, v2, v1}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p0}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "local_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/setting/request/RequestContainer;

    iput-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    sget v0, Lcom/alipay/android/app/R$id;->ar:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->d:Landroid/widget/RadioGroup;

    sget v0, Lcom/alipay/android/app/R$id;->ay:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iput-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->f:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->f:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setArrowType(I)V

    sget v0, Lcom/alipay/android/app/R$id;->aq:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iput-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->k:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->k:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setEnabled(Z)V

    sget v0, Lcom/alipay/android/app/R$id;->an:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->l:Landroid/widget/CheckBox;

    sget v0, Lcom/alipay/android/app/R$id;->as:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->m:Landroid/widget/TextView;

    sget v0, Lcom/alipay/android/app/R$id;->at:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->n:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->n:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->n:Lcom/alipay/mobile/commonui/widget/APTableView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setArrowImageVisibility(I)V

    sget v0, Lcom/alipay/android/app/R$id;->au:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->o:Landroid/widget/TextView;

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/alipay/android/setting/request/RequestService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "local_data"

    iget-object v2, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "titleBar:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/android/app/R$id;->aC:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "titleBar"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    sget v5, Lcom/alipay/android/app/R$id;->aC:I

    aput v5, v3, v4

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ",setting_channel_tip2:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/android/app/R$id;->as:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "setting_channel_tip2"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    sget v5, Lcom/alipay/android/app/R$id;->as:I

    aput v5, v3, v4

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ",setting_channel_group:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/android/app/R$id;->ar:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "setting_channel_group"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    sget v5, Lcom/alipay/android/app/R$id;->ar:I

    aput v5, v3, v4

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ",setting_channel_tip4:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/android/app/R$id;->au:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "setting_channel_tip4"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    sget v5, Lcom/alipay/android/app/R$id;->au:I

    aput v5, v3, v4

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ",setting_sub_channel_group:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/android/app/R$id;->ay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "setting_sub_channel_group"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    sget v5, Lcom/alipay/android/app/R$id;->ay:I

    aput v5, v3, v4

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ",setting_btn_point:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/android/app/R$id;->aq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "setting_btn_point"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    sget v5, Lcom/alipay/android/app/R$id;->aq:I

    aput v5, v3, v4

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ",setting_channel_tip3:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/android/app/R$id;->at:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "setting_channel_tip3"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    sget v5, Lcom/alipay/android/app/R$id;->at:I

    aput v5, v3, v4

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ",setting_btn_autopay:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/android/app/R$id;->an:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "setting_btn_autopay"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    sget v5, Lcom/alipay/android/app/R$id;->an:I

    aput v5, v3, v4

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/trobot/external/DefaultMesssageHandler;->getInstance()Lcom/alipay/trobot/external/DefaultMesssageHandler;

    move-result-object v2

    sget-object v3, Lcom/alipay/test/ui/core/EventObject;->OnResume:Lcom/alipay/test/ui/core/EventObject;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x3

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/alipay/trobot/external/DefaultMesssageHandler;->onChangeEvent(Lcom/alipay/test/ui/core/EventObject;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->onDestroy()V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->d:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->removeAllViews()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->onStart()V

    invoke-virtual {p0}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->a()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->onStop()V

    invoke-virtual {p0}, Lcom/alipay/android/setting/activity/PaymentChannelActivity;->b()V

    return-void
.end method
