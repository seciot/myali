.class public Lcom/alipay/mobile/about/ui/FeedAssistantActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "mobile_about_feedassistant"
.end annotation


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field private static s:Ljava/lang/Integer;


# instance fields
.field private A:Landroid/view/View$OnClickListener;

.field protected b:Landroid/widget/HorizontalScrollView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "select_pic_scrollview"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "select_pic_linearview"
    .end annotation
.end field

.field protected d:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "edit_text_box_notify_view"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APEditText;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "about_feedBack_txt"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "about_feedback_edit_phone_txt"
    .end annotation
.end field

.field protected g:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "titleBar"
    .end annotation
.end field

.field protected h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/widget/Button;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private n:Z

.field private o:I

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/os/Handler;

.field private t:Z

.field private u:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field private v:Z

.field private w:Z

.field private x:Lcom/alipay/mobile/about/a/b;

.field private y:Z

.field private z:Lcom/alipay/mobile/base/config/ChannelConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "[1][3-8][0-9]{9}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->a:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->s:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->n:Z

    iput v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->o:I

    iput-boolean v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->t:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->v:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->w:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->y:Z

    new-instance v0, Lcom/alipay/mobile/about/ui/y;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/about/ui/y;-><init>(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->A:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object p2

    :goto_0
    return-object p2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getLocalizedMessage()Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getLocalizedMessage()Ljava/lang/String;

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "file size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "k"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v2

    new-array v0, v2, [B

    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    :cond_1
    :goto_0
    const-string/jumbo v1, ""

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "base64 string length:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->i:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget-object v1, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->s:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->h()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->a(I)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int v2, v0, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/io/File;

    new-array v5, v0, [Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->m:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "/5"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v6

    :goto_0
    if-ge v1, v2, :cond_2

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->H:I

    const/4 v4, 0x0

    invoke-static {p0, v0, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cT:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v4, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x5

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    if-lez v2, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;)V

    iput-boolean v9, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->n:Z

    :goto_1
    iput v2, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->o:I

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->r:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/about/ui/o;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/about/ui/o;-><init>(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;)V

    const-wide/16 v7, 0x1e

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v0, Lcom/alipay/mobile/about/ui/u;

    invoke-direct {v0, p0, v7, v3, v5}, Lcom/alipay/mobile/about/ui/u;-><init>(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;Ljava/util/concurrent/CountDownLatch;[Ljava/io/File;[Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 v4, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    iput-boolean v9, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->n:Z

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    new-instance v0, Lcom/alipay/mobile/about/ui/w;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/about/ui/w;-><init>(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;Landroid/net/Uri;[Ljava/io/File;I[Landroid/graphics/Bitmap;ILjava/util/concurrent/CountDownLatch;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;I)V
    .locals 3

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->removeView(Landroid/view/View;)V

    iget v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->o:I

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->m:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->removeViewAt(I)V

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->p:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->h:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->o:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;)V

    iget v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->o:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->o:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->n:Z

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->t:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->w:Z

    return p1
.end method

.method static synthetic c(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->i:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->p:Ljava/util/List;

    return-object v0
.end method

.method private f()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->i()V

    return-void
.end method

.method static synthetic g(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->r:Landroid/os/Handler;

    return-object v0
.end method

.method private g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->v:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->w:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->i:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget v0, Lcom/alipay/mobile/clientsecurity/R$string;->ae:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->toast(Ljava/lang/String;I)V

    return-void

    :cond_0
    sget v0, Lcom/alipay/mobile/clientsecurity/R$string;->ad:I

    goto :goto_0
.end method

.method private i()V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->i:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->i:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 11
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    const/16 v10, 0xf0

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->g:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v3, Lcom/alipay/mobile/about/ui/n;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/about/ui/n;-><init>(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->g:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->i:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/clientsecurity/R$color;->a:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->i:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APEditText;->setInputType(I)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setApprerance(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->u:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->u:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->u:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getMobileNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->t:Z

    iget-boolean v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->t:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->v:Z

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    new-instance v3, Lcom/alipay/mobile/about/ui/p;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/about/ui/p;-><init>(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    new-instance v3, Lcom/alipay/mobile/about/ui/q;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/about/ui/q;-><init>(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->e:Lcom/alipay/mobile/commonui/widget/APEditText;

    new-instance v3, Lcom/alipay/mobile/about/ui/r;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/about/ui/r;-><init>(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget-object v0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->s:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->s:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->e:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v0, v4, v3

    instance-of v6, v0, Landroid/text/InputFilter$LengthFilter;

    if-eqz v6, :cond_1

    const-string/jumbo v6, "mMax"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->s:Ljava/lang/Integer;

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->t:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setVisibility(I)V

    :goto_2
    invoke-direct {p0, v2}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->a(I)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->E:I

    invoke-static {p0, v0, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->j:Landroid/view/View;

    new-instance v3, Lcom/alipay/mobile/about/ui/s;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/about/ui/s;-><init>(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->F:I

    invoke-static {p0, v0, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->k:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->G:I

    invoke-static {p0, v0, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->l:Landroid/view/View;

    sget v3, Lcom/alipay/mobile/clientsecurity/R$id;->fA:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->m:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v3, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v3, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/base/config/ChannelConfig;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ChannelConfig;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->z:Lcom/alipay/mobile/base/config/ChannelConfig;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->z:Lcom/alipay/mobile/base/config/ChannelConfig;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->z:Lcom/alipay/mobile/base/config/ChannelConfig;

    const-string/jumbo v3, "hasFeedback"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/base/config/ChannelConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "true"

    iget-object v3, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->z:Lcom/alipay/mobile/base/config/ChannelConfig;

    const-string/jumbo v4, "hasFeedback"

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/base/config/ChannelConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_3
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->b:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :goto_4
    return-void

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setVisibility(I)V

    goto/16 :goto_2

    :cond_5
    move v1, v2

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->b:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v9}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_4
.end method

.method protected final b()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->a:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->h()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->n:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->y:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->c()V

    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->finish()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->e:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/alipay/mobile/clientsecurity/R$string;->g:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->d()V

    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->finish()V

    goto :goto_0
.end method

.method protected c()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->h:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->q:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->q:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->x:Lcom/alipay/mobile/about/a/b;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/about/a/b;->a(Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/img/UploadImgResult;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/alipay/mobileapp/biz/rpc/img/UploadImgResult;->path:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->q:Ljava/util/List;

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/img/UploadImgResult;->path:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "\u63d0\u4ea4\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->toast(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->f()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string/jumbo v0, "\u63d0\u4ea4\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->toast(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->f()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->U:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->toast(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->f()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->f()V

    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->d()V

    goto :goto_1
.end method

.method protected d()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v3, 0x1

    new-instance v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;

    invoke-direct {v1}, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->t:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->u:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getMobileNumber()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->mobileNo:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->u:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->u:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->userName:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->u:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->userId:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->u:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->logonId:Ljava/lang/String;

    :cond_1
    const-string/jumbo v0, "android"

    iput-object v0, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->osName:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->osVersion:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->userAgent:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getProductID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->productID:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->productVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->e:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->proposalMsg:Ljava/lang/String;

    const-string/jumbo v0, "proposal"

    iput-object v0, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->proposalType:Ljava/lang/String;

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "edge"

    :goto_0
    iput-object v0, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->onlineMode:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->q:Ljava/util/List;

    iput-object v0, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->imgUrlList:Ljava/util/List;

    iget-object v0, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->imgUrlList:Ljava/util/List;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "img size = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;->imgUrlList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->x:Lcom/alipay/mobile/about/a/b;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/about/a/b;->a(Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;)Lcom/alipay/mobileapp/common/service/facade/about/UserProposalRes;

    move-result-object v0

    if-eqz v0, :cond_6

    iget v1, v0, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalRes;->resultStatus:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_3

    iget v0, v0, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalRes;->resultStatus:I

    const/16 v1, 0x138a

    if-ne v0, v1, :cond_6

    :cond_3
    sget v0, Lcom/alipay/mobile/clientsecurity/R$string;->V:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->toast(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    return-void

    :cond_4
    if-ne v0, v3, :cond_5

    const-string/jumbo v0, "wifi"

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "fail"

    goto :goto_0

    :cond_6
    :try_start_1
    const-string/jumbo v0, "\u63d0\u4ea4\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->toast(Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    const-string/jumbo v0, "\u63d0\u4ea4\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5"

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->toast(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method protected final e()V
    .locals 3

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-static {v1, p0, v2, v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorMenu;->a(Lcom/alipay/mobile/framework/app/ActivityApplication;Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "appId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/about/a/b;

    invoke-direct {v0}, Lcom/alipay/mobile/about/a/b;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->x:Lcom/alipay/mobile/about/a/b;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->r:Landroid/os/Handler;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onDestroy :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->y:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->y:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->f()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->p:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->setIntent(Landroid/content/Intent;)V

    :try_start_0
    const-string/jumbo v0, "bitmapUrls"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_4

    array-length v2, v0

    if-lez v2, :cond_4

    array-length v2, v0

    new-array v2, v2, [Landroid/net/Uri;

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->h:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->h:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->p:Ljava/util/List;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->p:Ljava/util/List;

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v5, :cond_3

    const-string/jumbo v0, "\u6dfb\u52a0\u7167\u7247\u5931\u8d25\uff01\u4e00\u6b21\u6700\u591a\u53ea\u80fd\u53d15\u5f20\u56fe\u7247"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->toast(Ljava/lang/String;I)V

    :goto_1
    return-void

    :cond_3
    invoke-direct {p0, v0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->a(Ljava/util/List;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "fromFilter"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->h:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v5, :cond_6

    const-string/jumbo v0, "\u6dfb\u52a0\u7167\u7247\u5931\u8d25\uff01\u4e00\u6b21\u6700\u591a\u53ea\u80fd\u53d15\u5f20\u56fe\u7247"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->toast(Ljava/lang/String;I)V

    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->i()V

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "filePath"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "filterIndex"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    const-string/jumbo v1, "isPreview"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->h:Ljava/util/List;

    if-nez v1, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->h:Ljava/util/List;

    :cond_7
    iget-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->p:Ljava/util/List;

    if-nez v1, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->p:Ljava/util/List;

    :cond_8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->p:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->o:I

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->m:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->o:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/5"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->o:I

    if-ne v0, v4, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->n:Z

    :cond_9
    iget v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->o:I

    if-ne v0, v5, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->removeView(Landroid/view/View;)V

    :cond_a
    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->H:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cS:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cT:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget v2, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->o:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->r:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/about/ui/t;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/about/ui/t;-><init>(Lcom/alipay/mobile/about/ui/FeedAssistantActivity;)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method
