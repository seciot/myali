.class public final Lcom/alipay/mobile/quinox/splash/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/apps/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/splash/a;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-gez v2, :cond_1

    const-string/jumbo v1, "delay"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)Lcom/alipay/mobile/quinox/splash/b;
    .locals 11

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/quinox/splash/a;->a(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string/jumbo v1, "starttime"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/splash/a;->a(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/splash/a;->b:Ljava/lang/String;

    const-string/jumbo v1, "endtime"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/splash/a;->a(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/splash/a;->c:Ljava/lang/String;

    const-string/jumbo v1, "status"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/splash/a;->a(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/splash/a;->d:Ljava/lang/String;

    const-string/jumbo v1, "entry"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/splash/a;->a(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/splash/a;->e:Ljava/lang/String;

    const-string/jumbo v1, "showtime"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/splash/a;->a(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/splash/a;->f:Ljava/lang/String;

    const-string/jumbo v1, "preview"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/splash/a;->a(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/splash/a;->g:Ljava/lang/String;

    const-string/jumbo v1, "showpicture"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/splash/a;->a(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/splash/a;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/splash/a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/quinox/splash/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    new-instance v0, Lcom/alipay/mobile/quinox/splash/b;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/splash/a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/splash/a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/quinox/splash/a;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/mobile/quinox/splash/a;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/alipay/mobile/quinox/splash/a;->f:Ljava/lang/String;

    iget-object v9, p0, Lcom/alipay/mobile/quinox/splash/a;->g:Ljava/lang/String;

    iget-object v10, p0, Lcom/alipay/mobile/quinox/splash/a;->h:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v10}, Lcom/alipay/mobile/quinox/splash/b;-><init>(Lcom/alipay/mobile/quinox/splash/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/splash/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static a(Ljava/io/File;)Lorg/w3c/dom/Document;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/Manifest.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)J
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/alipay/mobile/quinox/splash/b;
    .locals 9

    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v3, v2, [Lcom/alipay/mobile/quinox/splash/b;

    const-string/jumbo v2, "09999970"

    invoke-direct {p0, v2}, Lcom/alipay/mobile/quinox/splash/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v4, "09999970"

    invoke-direct {p0, v2, v4}, Lcom/alipay/mobile/quinox/splash/a;->a(Ljava/io/File;Ljava/lang/String;)Lcom/alipay/mobile/quinox/splash/b;

    move-result-object v2

    aput-object v2, v3, v1

    const-string/jumbo v2, "09999971"

    invoke-direct {p0, v2}, Lcom/alipay/mobile/quinox/splash/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v4, "09999971"

    invoke-direct {p0, v2, v4}, Lcom/alipay/mobile/quinox/splash/a;->a(Ljava/io/File;Ljava/lang/String;)Lcom/alipay/mobile/quinox/splash/b;

    move-result-object v2

    aput-object v2, v3, v8

    aget-object v2, v3, v1

    if-nez v2, :cond_0

    aget-object v2, v3, v8

    if-eqz v2, :cond_1

    :cond_0
    aget-object v2, v3, v1

    if-eqz v2, :cond_6

    aget-object v2, v3, v8

    if-eqz v2, :cond_6

    aget-object v2, v3, v1

    iget v2, v2, Lcom/alipay/mobile/quinox/splash/b;->i:I

    aget-object v4, v3, v8

    iget v4, v4, Lcom/alipay/mobile/quinox/splash/b;->i:I

    if-ne v2, v4, :cond_4

    aget-object v2, v3, v1

    iget v2, v2, Lcom/alipay/mobile/quinox/splash/b;->i:I

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    aget-object v0, v3, v1

    iget-object v0, v0, Lcom/alipay/mobile/quinox/splash/b;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/splash/a;->b(Ljava/lang/String;)J

    move-result-wide v4

    aget-object v0, v3, v8

    iget-object v0, v0, Lcom/alipay/mobile/quinox/splash/b;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/splash/a;->b(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    aget-object v0, v3, v1

    goto :goto_0

    :cond_2
    aget-object v0, v3, v8

    goto :goto_0

    :pswitch_2
    aget-object v0, v3, v1

    iget-object v0, v0, Lcom/alipay/mobile/quinox/splash/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/splash/a;->b(Ljava/lang/String;)J

    move-result-wide v4

    aget-object v0, v3, v8

    iget-object v0, v0, Lcom/alipay/mobile/quinox/splash/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/splash/a;->b(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    aget-object v0, v3, v1

    goto :goto_0

    :cond_3
    aget-object v0, v3, v8

    goto :goto_0

    :cond_4
    aget-object v0, v3, v1

    iget v0, v0, Lcom/alipay/mobile/quinox/splash/b;->i:I

    aget-object v2, v3, v8

    iget v2, v2, Lcom/alipay/mobile/quinox/splash/b;->i:I

    if-le v0, v2, :cond_5

    aget-object v0, v3, v1

    goto :goto_0

    :cond_5
    aget-object v0, v3, v8

    goto :goto_0

    :cond_6
    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    if-eqz v1, :cond_7

    iget v5, v1, Lcom/alipay/mobile/quinox/splash/b;->i:I

    if-eqz v5, :cond_7

    move-object v0, v1

    goto :goto_0

    :cond_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
