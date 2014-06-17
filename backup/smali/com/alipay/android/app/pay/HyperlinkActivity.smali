.class public Lcom/alipay/android/app/pay/HyperlinkActivity;
.super Lcom/alipay/android/mini/window/AbsActivity;

# interfaces
.implements Lcom/alipay/android/app/widget/CustomListView$ICustomListViewListener;


# instance fields
.field a:Ljava/lang/Runnable;

.field private b:Lcom/alipay/android/app/net/Envelope;

.field private c:Landroid/webkit/WebView;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Lcom/alipay/android/app/widget/CustomListView;

.field private h:Ljava/util/ArrayList;

.field private i:Lcom/alipay/android/app/pay/f;

.field private j:Lcom/alipay/android/app/pay/g;

.field private k:Z

.field private l:I

.field private m:I

.field private n:Ljava/util/Map;

.field private o:Landroid/widget/Button;

.field private p:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/alipay/android/mini/window/AbsActivity;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->h:Ljava/util/ArrayList;

    iput v1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->l:I

    iput v1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->m:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->n:Ljava/util/Map;

    new-instance v0, Lcom/alipay/android/app/pay/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/pay/a;-><init>(Lcom/alipay/android/app/pay/HyperlinkActivity;)V

    iput-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->p:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/android/app/pay/d;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/pay/d;-><init>(Lcom/alipay/android/app/pay/HyperlinkActivity;)V

    iput-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->a:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/pay/HyperlinkActivity;)Lcom/alipay/android/app/net/Envelope;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->b:Lcom/alipay/android/app/net/Envelope;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/pay/HyperlinkActivity;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v1, "data"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->h:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "format"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "current_page"

    iget v3, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->l:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->l:I

    const-string/jumbo v2, "total"

    iget v3, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->m:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->m:I

    const-string/jumbo v0, "text/plain"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->j:Lcom/alipay/android/app/pay/g;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/android/app/pay/g;

    iget-object v1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->h:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/pay/g;-><init>(Lcom/alipay/android/app/pay/HyperlinkActivity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->j:Lcom/alipay/android/app/pay/g;

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->g:Lcom/alipay/android/app/widget/CustomListView;

    iget-object v1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->j:Lcom/alipay/android/app/pay/g;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->g:Lcom/alipay/android/app/widget/CustomListView;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/widget/CustomListView;->setXListViewListener(Lcom/alipay/android/app/widget/CustomListView$ICustomListViewListener;)V

    :goto_1
    iget v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->l:I

    iget v1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->m:I

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->g:Lcom/alipay/android/app/widget/CustomListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListView;->setPullLoadState(I)V

    :cond_0
    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->j:Lcom/alipay/android/app/pay/g;

    iget-object v1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/pay/g;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->j:Lcom/alipay/android/app/pay/g;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/g;->notifyDataSetChanged()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->i:Lcom/alipay/android/app/pay/f;

    if-nez v0, :cond_3

    new-instance v0, Lcom/alipay/android/app/pay/f;

    iget-object v1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->h:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/pay/f;-><init>(Lcom/alipay/android/app/pay/HyperlinkActivity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->i:Lcom/alipay/android/app/pay/f;

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->g:Lcom/alipay/android/app/widget/CustomListView;

    iget-object v1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->i:Lcom/alipay/android/app/pay/f;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->g:Lcom/alipay/android/app/widget/CustomListView;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/widget/CustomListView;->setXListViewListener(Lcom/alipay/android/app/widget/CustomListView$ICustomListViewListener;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->i:Lcom/alipay/android/app/pay/f;

    iget-object v1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/pay/f;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->i:Lcom/alipay/android/app/pay/f;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/f;->notifyDataSetChanged()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->g:Lcom/alipay/android/app/widget/CustomListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListView;->setPullLoadState(I)V

    goto :goto_2
.end method

.method private a([Ljava/lang/String;)V
    .locals 5

    iput-object p1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->f:[Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    :try_start_0
    aget-object v3, p1, v0

    add-int/lit8 v4, v0, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->m:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    const-string/jumbo v0, "current_page"

    iget v2, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->l:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/alipay/android/app/pay/c;

    invoke-direct {v3, p0, v1, v0}, Lcom/alipay/android/app/pay/c;-><init>(Lcom/alipay/android/app/pay/HyperlinkActivity;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/android/app/pay/HyperlinkActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->p:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/app/pay/HyperlinkActivity;)V
    .locals 6

    const/4 v4, 0x0

    sget v0, Lcom/alipay/android/app/R$string;->s:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->getString(I)Ljava/lang/String;

    sget v0, Lcom/alipay/android/app/R$string;->C:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v0, Lcom/alipay/android/app/R$string;->t:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/app/pay/e;

    invoke-direct {v3, p0}, Lcom/alipay/android/app/pay/e;-><init>(Lcom/alipay/android/app/pay/HyperlinkActivity;)V

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/mini/widget/SystemDefaultDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    return-void
.end method

.method static synthetic d(Lcom/alipay/android/app/pay/HyperlinkActivity;)V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->k:Z

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->g:Lcom/alipay/android/app/widget/CustomListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->g:Lcom/alipay/android/app/widget/CustomListView;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListView;->stopLoadMore()V

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->g:Lcom/alipay/android/app/widget/CustomListView;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListView;->setRefreshTime(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->g:Lcom/alipay/android/app/widget/CustomListView;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListView;->stopRefresh()V

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->g:Lcom/alipay/android/app/widget/CustomListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->g:Lcom/alipay/android/app/widget/CustomListView;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListView;->stopLoadMore()V

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->g:Lcom/alipay/android/app/widget/CustomListView;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListView;->stopRefresh()V

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->k:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->k:Z

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->f:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->a([Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/android/app/exception/NetErrorException;->printStackTrace()V

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    const v0, 0x10a0001

    invoke-super {p0}, Lcom/alipay/android/mini/window/AbsActivity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/alipay/android/mini/window/AbsActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/android/app/R$layout;->E:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    sget v0, Lcom/alipay/android/app/R$id;->aD:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->o:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->o:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->o:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/android/app/pay/b;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/pay/b;-><init>(Lcom/alipay/android/app/pay/HyperlinkActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "type"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v2, Lcom/alipay/android/app/net/Envelope;

    invoke-direct {v2}, Lcom/alipay/android/app/net/Envelope;-><init>()V

    iput-object v2, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->b:Lcom/alipay/android/app/net/Envelope;

    iget-object v2, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->b:Lcom/alipay/android/app/net/Envelope;

    const-string/jumbo v3, "inner.web"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/net/Envelope;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->b:Lcom/alipay/android/app/net/Envelope;

    sget-object v3, Lcom/alipay/android/app/pay/GlobalConstant;->API_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/net/Envelope;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->b:Lcom/alipay/android/app/net/Envelope;

    sget-object v3, Lcom/alipay/android/app/pay/GlobalConstant;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/net/Envelope;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->b:Lcom/alipay/android/app/net/Envelope;

    sget-object v3, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/net/Envelope;->b(Ljava/lang/String;)V

    const-string/jumbo v2, "text"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v0, "param"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->f:[Ljava/lang/String;

    sget v0, Lcom/alipay/android/app/R$id;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/widget/CustomListView;

    iput-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->g:Lcom/alipay/android/app/widget/CustomListView;

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->g:Lcom/alipay/android/app/widget/CustomListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->f:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->a([Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->n:Ljava/util/Map;

    const-string/jumbo v1, "title_close"

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    sget v4, Lcom/alipay/android/app/R$id;->aD:I

    aput v4, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->n:Ljava/util/Map;

    const-string/jumbo v1, "web_view"

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    sget v4, Lcom/alipay/android/app/R$id;->aG:I

    aput v4, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->n:Ljava/util/Map;

    const-string/jumbo v1, "title_name"

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    sget v4, Lcom/alipay/android/app/R$id;->aF:I

    aput v4, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->n:Ljava/util/Map;

    const-string/jumbo v1, "title_img"

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    sget v4, Lcom/alipay/android/app/R$id;->aE:I

    aput v4, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->n:Ljava/util/Map;

    const-string/jumbo v1, "agreement_list"

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    sget v4, Lcom/alipay/android/app/R$id;->a:I

    aput v4, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/trobot/external/DefaultMesssageHandler;->getInstance()Lcom/alipay/trobot/external/DefaultMesssageHandler;

    move-result-object v0

    sget-object v1, Lcom/alipay/test/ui/core/EventObject;->OnResume:Lcom/alipay/test/ui/core/EventObject;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "HyperlinkActivity"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->n:Ljava/util/Map;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alipay/trobot/external/DefaultMesssageHandler;->onChangeEvent(Lcom/alipay/test/ui/core/EventObject;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    const-string/jumbo v2, "url"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v2, Lcom/alipay/android/app/widget/BaseWebView;

    sget v0, Lcom/alipay/android/app/R$id;->aG:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-direct {v2, v0, p0}, Lcom/alipay/android/app/widget/BaseWebView;-><init>(Landroid/webkit/WebView;Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/alipay/android/app/widget/BaseWebView;->a()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->c:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->c:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    const-string/jumbo v0, "param"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->c:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/pay/HyperlinkActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->p:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/alipay/android/mini/window/AbsActivity;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b()Lcom/alipay/android/app/empty/WindowTemplateProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b(Landroid/content/Context;)V

    invoke-super {p0}, Lcom/alipay/android/mini/window/AbsActivity;->onLowMemory()V

    return-void
.end method
