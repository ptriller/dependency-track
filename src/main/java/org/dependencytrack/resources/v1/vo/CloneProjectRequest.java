/*
 * This file is part of Dependency-Track.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * Copyright (c) Steve Springett. All Rights Reserved.
 */
package org.dependencytrack.resources.v1.vo;

import alpine.validation.RegexSequence;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

/**
 * Defines a custom request object used when cloning a project.
 *
 * @author Steve Springett
 * @since 3.3.0
 */
public class CloneProjectRequest {

    @NotNull
    @Pattern(regexp = "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$", message = "The project must be a valid 36 character UUID")
    private final String project;

    @NotNull
    @Pattern(regexp = RegexSequence.Definition.PRINTABLE_CHARS_PLUS, message = "The version may only contain printable characters")
    private final String version;

    private final boolean includeTags;

    private final boolean includeProperties;

    private final boolean includeDependencies;

    private final boolean includeAuditHistory;

    @JsonCreator
    public CloneProjectRequest(@JsonProperty(value = "project", required = true) String project,
                               @JsonProperty(value = "version", required = true) String version,
                               @JsonProperty(value = "includeTags") boolean includeTags,
                               @JsonProperty(value = "includeProperties") boolean includeProperties,
                               @JsonProperty(value = "includeDependencies") boolean includeDependencies,
                               @JsonProperty(value = "includeAuditHistory") boolean includeAuditHistory) {
        this.project = project;
        this.version = version;
        this.includeTags = includeTags;
        this.includeProperties = includeProperties;
        this.includeDependencies = includeDependencies;
        this.includeAuditHistory = includeAuditHistory;
    }

    public String getProject() {
        return project;
    }

    public String getVersion() {
        return version;
    }

    public boolean includeTags() {
        return includeTags;
    }

    public boolean includeProperties() {
        return includeProperties;
    }

    public boolean includeDependencies() {
        return includeDependencies;
    }

    public boolean includeAuditHistory() {
        return includeAuditHistory;
    }
}
